<?php

use App\Actions\Fortify\CreateNewUser;
use App\Models\AvaliacoesProduto;
use App\Models\AvaliacaoEmpresa;
use Illuminate\Support\Facades\Route;
use App\Models\Produto;
use App\Models\EmpresaDestaque;
use App\Models\Empresa;
use App\Models\Categoria;
use App\Models\CategoriaEmpresa;
use App\Models\CategoriaProduto;
use App\Models\Cidade;
use App\Models\PedidoProduto;
use App\Models\Pedido;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $categoria_produtos = CategoriaProduto::all();
    $categoria_empresas = CategoriaEmpresa::all();
    $produtos = Produto::all();
    $cidades = Cidade::all();
    $empresas = Empresa::where('ativo', true)->get();
    $empresas_destaques = EmpresaDestaque::all();
    $empresas_famosas = Empresa::where('avaliacao', '>=', 4)->take(5)->where('ativo', true)->get();
    return view('welcome', compact('produtos', 'empresas', 'categoria_produtos', 'categoria_empresas', 'empresas_famosas','empresas_destaques','cidades'));
})->name('welcome');



Route::get('/tipo_register', function () {
    return view('auth.tipo_register');
})->name('auth.tipo_register');

Route::get('/registrar_empresario', function () {
    $cidades = Cidade::all();
    return view('auth.registrar_empresario', compact('cidades'));
})->name('auth.registrar_empresario');

Route::post('/registrar_empresario', function (Request $request) {
    //    dd($request);
    $create_user = new CreateNewUser();
    $usuario = $create_user->create($request->all());
    $role = \App\Models\Role::where('name', '=', 'empresario')->first();
    $usuario->role_id = $role->id;
    $usuario->cidade_id = $request->cidade_id;
    $usuario->save();
    return redirect()->route('empresa.cadastrar');
})->name('register.empresario');






Route::get('/produto', function () {
    $produtos = Produto::whereHas('empresa', function ($query) {
        $query->where('ativo', 1);
          })->get();
    $categoria_produtos = CategoriaProduto::all();
    return view('produto.index', compact('produtos', 'categoria_produtos'));
})->name('produto');

Route::get('/cidades{id}/produtos', function ($id) {
    $cidade = Cidade::find($id);
    // $produtos = Produto::where('cidade_id', $cidade->id)->get();
    $produtos = Produto::whereHas('empresa', function ($query) use ($cidade) {
        $query->where('cidade_id', $cidade->id);
          })->whereHas('empresa', function ($query) {
            $query->where('ativo', 1);
              })->get();

    return view('produto.produtos_cidades' ,compact('cidade', 'produtos'));
})->name('cidade_produto');


Route::get('empresa/{id}/categoria_produto/{categoria_id}', function ($id, $categoria_id) {
    $empresa = Empresa::find($id);
    $categoria_produto = CategoriaProduto::find($categoria_id);
    $produtos = Produto::where('categoria_produto_id', $categoria_produto->id)->where('empresa_id', $id)->get();

    // dd($categoria_produto);

    return view('produto.visualizar', compact('empresa','produtos', 'categoria_produto'));
})->name('vermaisproduto');


Route::get('/empresa', function () {
    $empresas = Empresa::where('ativo', true)->get();
    $categoria_empresas = CategoriaEmpresa::all();
    return view('empresa.index', compact('empresas', 'categoria_empresas'));
})->name('empresa');


Route::get('/empresa/{id}', function ($id) {
    $limite = 5;
    $empresa = Empresa::find($id);
    $categorias = [];
    // $categorias_produtos = Produto::joinRelationship('categoria')->get();
    $categorias_produtos = $empresa->produtos()
        ->with('empresa')
        ->join('categoria_produtos', 'categoria_produtos.id', '=', 'produtos.categoria_produto_id')
        ->get(['categoria_produtos.*']);
    //dd($categorias_produtos);
    foreach ($categorias_produtos as $categoria) {
        $categorias[$categoria->nome] = Produto::where('categoria_produto_id', $categoria->id)->where('empresa_id', $id)->take($limite)->get();
    }
    $produtos = Produto::where('empresa_id', $empresa->id)->get();

    return view('empresa.visualizar', compact('empresa', 'produtos', 'categorias'));
})->name('empresa.visualizar');


Route::get('/categoria-produto/{id}', function ($id) {
    $categoria_produto = CategoriaProduto::find($id);
    $produtos = Produto::where('categoria_produto_id', $categoria_produto->id)->whereHas('empresa', function ($query) {
        $query->where('ativo', 1);
          })->get();
    $produtos_famosos = Produto::where('avaliacao', '>=', 4)->take(5)->where('categoria_produto_id', $categoria_produto->id)->get();
    return view('produto.categoria', compact('produtos', 'categoria_produto', 'produtos_famosos'));
})->name('produto.categoria');

Route::get('/categoria-empresa/{id}', function ($id) {
    $categoria_empresa = CategoriaEmpresa::find($id);
    $empresas = Empresa::where('categoria_empresa_id', $categoria_empresa->id)->where('ativo', true)->get();
    return view('empresa.categoria', compact('empresas', 'categoria_empresa'));
})->name('empresa.categoria');



Route::get('/filtro/pesquisa', function (Request $request) {
    //  dd($request->filtro);
    $produtos = Produto::where('nome', 'LIKE', "%{$request->filtro}%")->whereHas('empresa', function ($query) {
        $query->where('ativo', 1);
          })->get();
    $nome_cidade = "%{$request->filtro}%";
    $empresas = Empresa::whereHas('cidade', function($query) use ($nome_cidade) {
        $query->where('nome', 'LIKE',$nome_cidade);
    })->orWhere('nome', 'LIKE', "%{$request->filtro}%")->get();
    $categorias = CategoriaProduto::where('nome', 'LIKE', "%{$request->filtro}%")->get();
    // $cidades = Cidade::where('nome', 'LIKE', "%{$request->filtro}%")->get();
    // dd($categorias, $empresas, $produtos);
    // dd($cidades);

    return view('busca', compact('produtos', 'empresas','categorias'));
})->name('filtro');



// Route::get('/empresas/buscar', function (Request $request) {

//     //  dd($request->filtro);
//     $categoria_empresas =App\Models\CategoriaEmpresa::where('nome', 'LIKE',"{$request->filtro}%")->get();
//     $empresas =App\Models\Empresa::where('nome', 'LIKE',"{$request->filtro}%")->get();
// // dd($livros);
//     return view('empresa.index',compact('empresas','categoria_empresas'));
// })->name('pesquisas.buscar');

Route::get('/fale_conosco', function () {
    return view('rodape.fale_conosco');
})->name('fale_conosco');

Route::get('/quem_somos', function () {
    return view('rodape.quem_somos');
})->name('quem_somos');

Route::get('/saiba_mais', function () {
    return view('rodape.saiba_mais');
})->name('saiba_mais');






// Rota para permitidas apenas para usuários autenticados
Route::middleware(['auth'])->group(function () {

    Route::get('/registrar_empresa', function () {
        $categoria_empresas = CategoriaEmpresa::all();
        $cidades = Cidade::all();
        return view('empresa.cadastrar', compact('categoria_empresas', 'cidades'));
    })->name('empresa.cadastrar');
    Route::post('/empresa/salvar', function (Request $request) {
        $quantidadeEmpresaCadastradas = Empresa::where('user_id', Auth::user()->id)->count();
        if ($quantidadeEmpresaCadastradas == 0) {

            $empresa = new Empresa();
            $empresa->user_id = Auth::user()->id;
            $empresa->cnpj = $request->cnpj;
            $empresa->cpf = $request->cpf;
            $empresa->endereco = $request->endereco;
            $empresa->telefone = $request->telefone;
            $empresa->nome = $request->nome;
            $empresa->categoria_empresa_id = $request->categoria_empresa_id;
            $empresa->cidade_id = $request->cidade_id;
            //    dd($empresa);
            $empresa->save();
            // return new \App\Mail\SendMailEmpresa($empresa);
            \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailEmpresa($empresa));
        }
        return redirect()->route('home');
    })->name('empresa.salvar');



    Route::post('/carrinho', function (Request $request) {
        //criar vetor fazio com varialvel pedido vai guardar uma lista
        $pedidos = [];
        //criando um vetor fazio com variavel pedidosPorEmpresa que vai guardar uma empresa e uma lista de produtos
        $pedidosPorEmpresa = [];
        //separar os produtos por empresa
        foreach ($request->produtos as $produto_id) {
            //buscando por um produto com o (id)= $produto_id que esta sendo passado pelo request
            $produto = Produto::find($produto_id);
            //adiciona ao vetor pedidosPorEmpresa com a chave empresa id o produto
            $pedidosPorEmpresa[$produto->empresa()->first()->id][] = $produto;
        }
        //para cada empresa criar um pedido
        foreach ($pedidosPorEmpresa as $empresa_id => $produtos) {
            //Criando um objeto Pedido
            $pedido = new Pedido();
            //prenche a coluna user_id com um usuario logado
            $pedido->user_id = Auth::user()->id;

            $pedido->empresa_id = $empresa_id;
            //Salva na tabela pedidos as colunas que foram prenchidas
            $pedido->save();
            //para cada produto criar iten pedido
            foreach ($produtos as $produto) {
                $itemPedido = new PedidoProduto();
                $itemPedido->pedido_id = $pedido->id;
                $itemPedido->produto_id = $produto->id;
                $itemPedido->save();
            }
            // return new \App\Mail\SendMailPedido($pedido);
            \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailPedido($pedido));
            // return new \App\Mail\SendMailUsuario($pedidos);

            $pedidos[] = $pedido;
        }
        // return new \App\Mail\SendMailUsuario($pedidos);
        \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailUsuario($pedidos));
        return view('pedido.index', compact('pedidos'));
    })->name('carrinho');



    Route::get('/lista/pedidos', function () {
        $pedidos = Pedido::where('user_id', Auth::user()->id)
        ->orderByRaw('updated_at  DESC')
    ->get();
        // $produtos = Produto::all();
        //  dd($pedidos->produtos()->get());

        // return $pedidos;
        return view('pedido.listar_pedido', compact('pedidos'));
    })->name('listaPedido');

    Route::get('/lista/pedidos/produtor', function () {
        $pedidos = Pedido::whereHas('empresa', function ($query) {
            $query->where('user_id', Auth::user()->id);


    })
   ->get();



        // return $pedidos;
        return view('pedido.listar_pedido_empresa', compact('pedidos'));
    })->name('listaPedidoProdutor');


    Route::get('/avaliar/pedido/{id}/produto/{produto_id}', function ($id, $produto_id) {
        $pedido = Pedido::find($id);
        $produto = Produto::find($produto_id);

        // $produto = Produto::where('user_id',$pedido->id)->get();
        // $produto->pivot->avaliacao;


        // $pedido =Pedido::where('user_id',$produto->id)->get();
        // return $pedido;
        // return $produto;
        // dd($pedido);
        // dd($produto);


        return view('pedido.avaliar_pedido_produto', compact('pedido', 'produto'));
    })->name('avaliarproduto');



    Route::post('/avaliar/produto/salvar', function (Request $request) {
       $produto_id = $request->produto_id;
    //    dd($request);
        $usuario_logado = Auth::user();
        $avaliacao_produto = AvaliacoesProduto::where('produto_id', $produto_id)->where('user_id', Auth::user()->id)
            ->firstOrNew(
                ['produto_id' => $produto_id],
                ['user_id' =>  Auth::user()->id],
            );
        $avaliacao_produto->descricao = $request->descricao;
        $avaliacao_produto->avaliacao = $request->avaliacao;

        $avaliacao_produto->save();

        $produto = Produto::find($produto_id);
        if(empty($produto->avaliacao)){
           $produto->avaliacao = $request->avaliacao;
        }
        $produto->avaliacao = ($produto->avaliacao + $request->avaliacao)/2;

        $produto->save();
        return redirect()->route('listaPedido');
    })->name('avaliacao.produto.salvar');



    Route::get('/avaliar/pedido/{id}/empresa/{empresa_id}', function ($id, $empresa_id) {
        // $pedido = Pedido::where('user_id', Auth::user()->id)->get();
        // $pedido = Pedido::find($id);
        // $empresa = Empresa::find($empresa_id);
        $pedido = Pedido::find($id);
        $empresa = Empresa::find($empresa_id);
        $avaliacao_empresa = AvaliacaoEmpresa::where('empresa_id', $empresa_id)->where('user_id', Auth::user()->id)
        ->first();
   if( !isset($avaliacao_empresa)){
    return redirect()->back()->with('info','Já foi feito uma avaliação do produtor para esse pedido!');

   }
    //  dd($empresa);

        return view('pedido.avaliar_pedido_empresa', compact('pedido', 'empresa'));
    })->name('avaliarempresa');


    Route::post('/avaliar/empresa/salvar', function (Request $request) {
        $empresa_id = $request->empresa_id;
     //    dd($request);
         $usuario_logado = Auth::user();
         $avaliacao_empresa = AvaliacaoEmpresa::where('empresa_id', $empresa_id)->where('user_id', Auth::user()->id)
             ->firstOrNew(
                 ['empresa_id' => $empresa_id],
                 ['user_id' =>  Auth::user()->id],
             );
         $avaliacao_empresa->descricao = $request->descricao;
         $avaliacao_empresa->avaliacao = $request->avaliacao;

         $avaliacao_empresa->save();

         $empresa = Empresa::find($empresa_id);
         if(empty($empresa->avaliacao)){
            $empresa->avaliacao = $request->avaliacao;
         }
         $empresa->avaliacao = ($empresa->avaliacao + $request->avaliacao)/2;

         $empresa->save();

         return redirect()->route('listaPedido');
     })->name('avaliacao.empresa.salvar');

     Route::get('/enviar_email', function(){
        $user = new stdClass();
        $user->name = 'João Marcelo';
        $user->email = 'joaomarcelocassavara@gmail.com';
        // $user = new User();
        // $user->name = $request->name;
        // $user->email = $request->email;


        //  return new \App\Mail\SendMailUser($user);
        \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailUser($user));
    });

    Route::get('/empresa/{id}/ativar', function ($id, Request $request) {
        $empresa = \App\Models\Empresa::find($id);
				//TODO: se o usuario for admin e a empresa esta inativa
                if($empresa->ativo == 0){
                    $empresa->ativo = 1;
                }
                else{
                    $empresa->ativo = 0;
                }
                $empresa->save();
        return redirect()->back();
    })->name('empresas.ativar');



    Route::get('/localizacao/pedido{id}', function ($id) {
        $pedido = Pedido::find($id);
        return view('pedido.adicionar_localizacao', compact('pedido'));
    })->name('adicionarLocalizacao');


    Route::post('/adicionar/localizacao{id}/usuario', function (Request $request, $id) {

        $pedido = Pedido::find($id);
        $pedido->endereco_entrega = $request->endereco_entrega;
        $pedido->save();
        return redirect()->route('listaPedido');
    })->name('salvarLocalizacaoUsuario');

});




Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();
Auth::routes(['verify' => true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

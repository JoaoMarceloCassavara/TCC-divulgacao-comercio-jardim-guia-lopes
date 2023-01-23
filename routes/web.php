<?php

use App\Actions\Fortify\CreateNewUser;
use Illuminate\Support\Facades\Route;
use App\Models\Produto;
use App\Models\Empresa;
use App\Models\Categoria;
use App\Models\CategoriaEmpresa;
use App\Models\CategoriaProduto;
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
    $empresas = Empresa::all();
    $empresas_famosas = Empresa::where('avaliacao', '>=',4)->take(5)->get();
    return view('welcome',compact('produtos','empresas','categoria_produtos', 'categoria_empresas','empresas_famosas'));
})->name('welcome');


Route::get('/tipo_register', function () {
    return view('auth.tipo_register');
})->name('auth.tipo_register');

Route::get('/registrar_empresario', function () {
    return view('auth.registrar_empresario');
})->name('auth.registrar_empresario');

Route::post('/registrar_empresario', function (Request $request) {
//    dd($request);
   $create_user = new CreateNewUser();
   $usuario = $create_user->create($request->all());


     $role = \App\Models\Role::where('name', '=', 'empresario')->first() ;
     $usuario->role_id = $role->id;
     $usuario->save();
    return redirect()->route('empresa.cadastrar');
     })->name('register.empresario');






Route::get('/produto', function () {
    $produtos = Produto::all();
    $categoria_produtos = CategoriaProduto::all();
    return view('produto.index',compact('produtos', 'categoria_produtos'));
})->name('produto');

Route::get('/produto/{id}', function ($id) {

    $produto = Produto::find($id);
    return view('produto.visualizar',compact('produto'));
})->name('produto.visualizar');


Route::get('/empresa', function () {
    $empresas = Empresa::all();
    $categoria_empresas = CategoriaEmpresa::all();
    return view('empresa.index',compact('empresas', 'categoria_empresas'));
})->name('empresa');


Route::get('/empresa/{id}', function ($id) {
    $limite = 5;
    $empresa = Empresa::find($id);
    $categorias = [];
    // $categorias_produtos = Produto::joinRelationship('categoria')->get();
    $categorias_produtos = $empresa->produtos()
        ->with('empresa')
        ->join('categoria_produtos','categoria_produtos.id', '=', 'produtos.categoria_produto_id')
        ->get(['categoria_produtos.*']);
    //dd($categorias_produtos);
    foreach($categorias_produtos as $categoria){
        $categorias[$categoria->nome] = Produto::where('categoria_produto_id',$categoria->id)->where('empresa_id',$id)->take($limite)->get();
    }
    $produtos = Produto::where('empresa_id',$empresa->id)->get();

    return view('empresa.visualizar',compact('empresa', 'produtos', 'categorias'));
})->name('empresa.visualizar');


Route::get('/categoria-produto/{id}', function ($id) {
    $categoria_produto = CategoriaProduto::find($id);
    $produtos = Produto::where('categoria_produto_id',$categoria_produto->id)->get();
    return view('produto.categoria',compact('produtos', 'categoria_produto'));
})->name('produto.categoria');

Route::get('/categoria-empresa/{id}', function ($id) {
    $categoria_empresa = CategoriaEmpresa::find($id);
    $empresas = Empresa::where('categoria_empresa_id',$categoria_empresa->id)->get();
    return view('empresa.categoria',compact('empresas', 'categoria_empresa'));
})->name('empresa.categoria');



Route::get('/filtro/pesquisa', function (Request $request) {
    //  dd($request->filtro);
    $produtos = Produto::where('nome','LIKE',"%{$request->filtro}%")->get();
    $empresas = Empresa::where('nome','LIKE',"%{$request->filtro}%")->get();
    return view('busca', compact('produtos','empresas'));
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


// rota para permitidas apenas para usuários autenticados
Route::middleware(['auth'])->group(function () {

    Route::get('/registrar_empresa', function () {
        return view('empresa.cadastrar');
    })->name('empresa.cadastrar');
    Route::post('/empresa/salvar', function (Request $request) {
     $quantidadeEmpresaCadastradas=Empresa::where('user_id',Auth::user()->id )->count();
     if($quantidadeEmpresaCadastradas == 0){

           $empresa= new Empresa();
           $empresa->user_id = Auth::user()->id;
           $empresa->cnpj=$request->cnpj;
           $empresa->cpf=$request->cpf;
           $empresa->endereco=$request->endereco;
           $empresa->telefone=$request->telefone;
           $empresa->nome=$request->nome;
        //    dd($empresa);
        $empresa->save();
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
            foreach($produtos as $produto){
                $itemPedido = new PedidoProduto();
                $itemPedido->pedido_id = $pedido->id;
                $itemPedido->produto_id = $produto->id;
                $itemPedido->save();

            }

            $pedidos[] = $pedido;
        }
        return view('pedido.index', compact('pedidos'));
    })->name('carrinho');

    Route::get('/lista/pedidos', function () {
        $pedidos = Pedido::where('user_id',Auth::user()->id )->count();
        $produtos = Produto::all();
        return view('pedido.listar_pedido', compact('pedidos', 'produtos'));
    })->name('listaPedido');

});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

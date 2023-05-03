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
//<---------- Tela inicial ---------->

Route::get('/', function () {
    $categoria_produtos = CategoriaProduto::all();
    $categoria_empresas = CategoriaEmpresa::all();
    $produtos = Produto::all();
    $cidades = Cidade::all();
    $empresas = Empresa::where('ativo', true)->get();
    $empresas_destaques = EmpresaDestaque::all();
    $empresas_famosas = Empresa::where('avaliacao', '>=', 4)->take(5)->where('ativo', true)->get();
    return view('welcome', compact('produtos', 'empresas', 'categoria_produtos', 'categoria_empresas', 'empresas_famosas', 'empresas_destaques', 'cidades'));
})->name('welcome');
//<---------- Tela inicial Fim  ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////




//<---------- Rotas para empresa ---------->
// Rotas publicas
Route::get('/empresa', [App\Http\Controllers\EmpresaController::class, 'listarEmpresas'])->name('empresa');
Route::get('/empresa/{id}', [App\Http\Controllers\EmpresaController::class, 'empresaId'])->name('empresa.visualizar');
Route::get('/categoria-empresa/{id}', [App\Http\Controllers\CategoriaController::class, 'categoriaEmpresa'])->name('empresa.categoria');
Route::get('empresa/{id}/categoria_produto/{categoria_id}', [App\Http\Controllers\CategoriaController::class, 'categoriaPorEmpresa'])->name('vermaisproduto');



// Registar usuario empresario
Route::get('/registrar_empresario', [App\Http\Controllers\EmpresaController::class, 'registrarUserEmpresario'])->name('auth.registrar_empresario');
Route::post('/registrar_empresario', [App\Http\Controllers\EmpresaController::class, 'cadastrarUserEmpresario'])->name('register.empresario');
// Registar usuario empresario Fim


// Rotas publicas Fim



// rotas dentro desse grupo, requerem autenticação do usuário para acessarem as páginas
Route::middleware(['auth'])->group(function () {

    //Aqui vão as rotas que devem ser acessada apenas depois do usuario logar
    Route::get('/empresa/{id}/ativar', [App\Http\Controllers\EmpresaController::class, 'empresaAtiva'])->name('empresas.ativar');


    // Rota de registrar empresa
    Route::get('/registrar_empresa', [App\Http\Controllers\EmpresaController::class, 'registrarEmpresa'])->name('empresa.cadastrar');
    Route::post('/empresa/salvar', [App\Http\Controllers\EmpresaController::class, 'cadastrarEmpresa'])->name('empresa.salvar');
    // Rota de registrar empresa fim


    // Rota de avaliar empresa
    Route::get('/avaliar/pedido/{id}/empresa/{empresa_id}', [App\Http\Controllers\AvaliacaoController::class, 'avaliarEmpresa'])->name('avaliarempresa');
    Route::post('/avaliar/empresa/salvar', [App\Http\Controllers\AvaliacaoController::class, 'salvarAvaliacaoEmpresa'])->name('avaliacao.empresa.salvar');
    // rota de avaliar empresa fim


});
//<---------- Rotas para empresa Fim ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////


// <---------- Rotas para Produto ---------->

// Rotas publicas
Route::get('/produto', [App\Http\Controllers\ProdutoController::class, 'listarProdutos'])->name('produto');
Route::get('/categoria-produto/{id}', [App\Http\Controllers\CategoriaController::class, 'categoriaProduto'])->name('produto.categoria');
Route::get('/cidades{id}/produtos', [App\Http\Controllers\ProdutoController::class, 'cidadePorProduto'])->name('cidade_produto');
// Rotas publicas FIm

// rotas dentro desse grupo, requerem autenticação do usuário para acessarem as páginas
Route::middleware(['auth'])->group(function () {

    //Aqui vão as rotas que devem ser acessada apenas depois do usuario logar

    Route::get('/avaliar/pedido/{id}/produto/{produto_id}', [App\Http\Controllers\AvaliacaoController::class, 'avaliarProduto'])->name('avaliarproduto');
    Route::post('/avaliar/produto/salvar', [App\Http\Controllers\AvaliacaoController::class, 'salvarAvaliacaoProduto'])->name('avaliacao.produto.salvar');
});
// <---------- Rotas para Produto Fim ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////


//<---------- Rotas para pedidos ---------->
// Rotas publicas
//
// Rotas publicas FIm


// rotas dentro desse grupo, requerem autenticação do usuário para acessarem as páginas
Route::middleware(['auth'])->group(function () {

    //Aqui vão as rotas que devem ser acessada apenas depois do usuario logar
    Route::get('/lista/pedidos', [App\Http\Controllers\PedidoController::class, 'listarPedidosDoUser'])->name('listaPedido');

    Route::get('/lista/pedidos/produtor', [App\Http\Controllers\PedidoController::class, 'listarPedidosParaProdutor'])->name('listaPedidoProdutor');


    Route::get('/localizacao/pedido{id}', [App\Http\Controllers\PedidoController::class, 'loacalizacaoPedido'])->name('adicionarLocalizacao');
    Route::post('/adicionar/localizacao{id}/usuario', [App\Http\Controllers\PedidoController::class, 'adicionarLocalizacaoPedido'])->name('salvarLocalizacaoUsuario');
});
//<---------- Rotas para pedidos fim ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////


//<---------- Rota do carrinho e da pagina home ---------->
// rotas dentro desse grupo, requerem autenticação do usuário para acessarem as páginas
Route::middleware(['auth'])->group(function () {
    //Aqui vão as rotas que devem ser acessada apenas depois do usuario logar
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


    // Rota do carrinho


    Route::post('/carrinho', function (Request $request) {
        //criar vetor fazio com varialvel pedido vai guardar uma lista
        $pedidos = [];
        //criando um vetor fazio com variavel pedidosPorEmpresa que vai guardar uma empresa e uma lista de produtos
        $pedidosPorEmpresa = [];

        $quantidadeProdutoPedidoPorEmpresa = [];
        //separar os produtos por empresa
        foreach ($request->produtos as $indice => $produto_id) {
            //buscando por um produto com o (id)= $produto_id que esta sendo passado pelo request
            $produto = Produto::find($produto_id);
            //adiciona ao vetor pedidosPorEmpresa com a chave empresa id o produto
            $pedidosPorEmpresa[$produto->empresa()->first()->id][] = $produto;

            $quantidadeProdutoPedidoPorEmpresa[$produto->empresa()->first()->id][] = $request->quantidades[$indice];
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
            foreach ($produtos as $indice => $produto) {
                $itemPedido = new PedidoProduto();
                $itemPedido->pedido_id = $pedido->id;
                $itemPedido->produto_id = $produto->id;
                $itemPedido->quantidade = $quantidadeProdutoPedidoPorEmpresa[$empresa_id][$indice];
                $itemPedido->save();
            }
            // return new \App\Mail\SendMailPedido($pedido);
            // Enviar email ao usuario empresario quando for realizado um pedido
            \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailPedido($pedido));
            // return new \App\Mail\SendMailUsuario($pedidos);

            $pedidos[] = $pedido;
        }
        // return new \App\Mail\SendMailUsuario($pedidos);
        // Enviar email ao usuario normal quando for realizado um pedido
        \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailUsuario($pedidos));
        return view('pedido.index', compact('pedidos'));
    })->name('carrinho');

    // Rota do carrinho FIm
});

//<---------- Rota do carrinho e da pagina home Fim  ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////


//<---------- Rota de tipo de registro de usuario ---------->
Route::get('/tipo_register', function () {
    return view('auth.tipo_register');
})->name('auth.tipo_register');
//<---------- Rota de tipo de registro de usuario Fim ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////



//<---------- Rota do filtro de pesquisa ---------->
Route::get('/filtro/pesquisa', function (Request $request) {
    //  dd($request->filtro);
    $produtos = Produto::where('nome', 'LIKE', "%{$request->filtro}%")->whereHas('empresa', function ($query) {
        $query->where('ativo', 1);
    })->get();
    $nome_cidade = "%{$request->filtro}%";
    $empresas = Empresa::whereHas('cidade', function ($query) use ($nome_cidade) {
        $query->where('nome', 'LIKE', $nome_cidade);
    })->orWhere('nome', 'LIKE', "%{$request->filtro}%")->get();
    $categorias = CategoriaProduto::where('nome', 'LIKE', "%{$request->filtro}%")->get();
    // $cidades = Cidade::where('nome', 'LIKE', "%{$request->filtro}%")->get();
    // dd($categorias, $empresas, $produtos);
    // dd($cidades);

    return view('busca', compact('produtos', 'empresas', 'categorias'));
})->name('filtro');
//<---------- Rota do filtro de pesquisa Fim ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////


//<---------- Rotas do rodapé ---------->
Route::get('/fale_conosco', function () {
    return view('rodape.fale_conosco');
})->name('fale_conosco');

Route::get('/quem_somos', function () {
    return view('rodape.quem_somos');
})->name('quem_somos');

Route::get('/saiba_mais', function () {
    return view('rodape.saiba_mais');
})->name('saiba_mais');

//<---------- Rotas do rodapé Fim ---------->
//////////////////////////////////////////////////////////////////////////////////////////////////////////


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();
Auth::routes(['verify' => true]);

//////////////////////////////////////////////////////////////////////////////////////////////////////////


//<---------- Rota de exemplo ---------->
// Rota para permitidas apenas para usuários autenticados
Route::middleware(['auth'])->group(function () {
    Route::get('/enviar_email', function () {
        $user = new stdClass();
        $user->name = 'João Marcelo';
        $user->email = 'joaomarcelocassavara@gmail.com';
        // $user = new User();
        // $user->name = $request->name;
        // $user->email = $request->email;
        $user = new stdClass();
        $user->name = 'João Marcelo';
        $user->email = 'joaomarcelocassavara@gmail.com';

        $empresa = new stdClass();
        $empresa->user = $user;
        $empresa->nome = 'joaozinho verduras';
        $empresa->id = '45';
        // $empresa->cidade->nome = '17';
        // return new \App\Mail\SendMailEmpresa($empresa);
        // return new \App\Mail\SendMailAddEmpresa($empresa);
        return new \App\Mail\SendMailUser($user);
        // \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailUser($user));
    });
    //<---------- Rota de exemplo ---------->

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
});

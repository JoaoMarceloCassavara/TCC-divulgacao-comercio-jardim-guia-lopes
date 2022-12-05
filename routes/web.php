<?php

use App\Actions\Fortify\CreateNewUser;
use Illuminate\Support\Facades\Route;
use App\Models\Produto;
use App\Models\Empresa;
use App\Models\Categoria;
use App\Models\CategoriaEmpresa;
use App\Models\CategoriaProduto;
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
    $produtos = Produto::all();
    return view('welcome',compact('produtos'));
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
    return redirect()->route('home');
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
    $empresa = Empresa::find($id);
    $produtos = Produto::where('empresa_id',$empresa->id)->get();

    return view('empresa.visualizar',compact('empresa', 'produtos'));
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



Route::get('/produtos/buscar', function (Request $request) {

    //  dd($request->filtro);
    $categoria_produtos =App\Models\CategoriaProduto::where('nome', 'LIKE',"{$request->filtro}%")->get();
    $produtos =App\Models\Produto::where('nome', 'LIKE',"{$request->filtro}%")->get();
// dd($livros);
    return view('produto.index',compact('produtos','categoria_produtos'));
})->name('pesquisas.buscar');

// Route::get('/empresas/buscar', function (Request $request) {

//     //  dd($request->filtro);
//     $categoria_empresas =App\Models\CategoriaEmpresa::where('nome', 'LIKE',"{$request->filtro}%")->get();
//     $empresas =App\Models\Empresa::where('nome', 'LIKE',"{$request->filtro}%")->get();
// // dd($livros);
//     return view('empresa.index',compact('empresas','categoria_empresas'));
// })->name('pesquisas.buscar');




// rota para permitidas apenas para usuários autenticados
Route::middleware(['auth'])->group(function () {

		// rota para adicionar as fotos selecionadas no carrinho
    Route::post('/carrinho', function (Request $request) {
        //TODO: criar pedido com status cadastrado
        //adicionar os itens pedidos, usuário e data
        // $carrinho = new Pedido();
        // $carrinho->user_id = Auth::user()->id ?? 1;
        //$carrinho->saveMany($request->fotos);
        dd($request);
        return view('carrinho.index', compact('carrinho'));
    })->name('carrinho');



});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

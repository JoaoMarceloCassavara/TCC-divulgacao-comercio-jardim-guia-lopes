<?php

use Illuminate\Support\Facades\Route;
use App\Models\Produto;
use App\Models\Empresa;
use App\Models\Categoria;
use App\Models\Pedido;
use App\Models\User;

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

Route::get('/produto', function () {
    $produtos = Produto::all();
    return view('produto.index',compact('produtos'));
})->name('produto');

Route::get('/produto/{id}', function ($id) {

    $produto = Produto::find($id);
    return view('produto.visualizar',compact('produto'));
})->name('produto.visualizar');


Route::get('/empresa', function () {
    $empresas = Empresa::all();
    return view('empresa.index',compact('empresas'));
})->name('empresa');


Route::get('/empresa/{id}', function ($id) {
    $empresa = Empresa::find($id);
    $produtos = Produto::where('empresa_id',$empresa->id)->get();
    return view('empresa.visualizar',compact('empresa', 'produtos'));
})->name('empresa.visualizar');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

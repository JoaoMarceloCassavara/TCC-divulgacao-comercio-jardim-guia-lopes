<?php

namespace App\Http\Controllers;

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
use Illuminate\Support\Facades\Auth;

class CategoriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    // Categoria de empresa
    public function categoriaEmpresa($id)
    {
        $categoria_empresa = CategoriaEmpresa::find($id);
        $empresas = Empresa::where('categoria_empresa_id', $categoria_empresa->id)->where('ativo', true)->get();
        return view('empresa.categoria', compact('empresas', 'categoria_empresa'));
    }

    public function categoriaPorEmpresa($id, $categoria_id)
    {
        $empresa = Empresa::find($id);
        $categoria_produto = CategoriaProduto::find($categoria_id);
        $produtos = Produto::where('categoria_produto_id', $categoria_produto->id)->where('empresa_id', $id)->get();

        // dd($categoria_produto);

        return view('produto.visualizar', compact('empresa', 'produtos', 'categoria_produto'));
    }
    // Categoria de empresa FIm
    ///////////////////////////////////////////////////////////////////

    //  Categoria produto
    public function categoriaProduto($id) {
        $categoria_produto = CategoriaProduto::find($id);
        $produtos = Produto::where('categoria_produto_id', $categoria_produto->id)->whereHas('empresa', function ($query) {
            $query->where('ativo', 1);
              })->get();
        $produtos_famosos = Produto::where('avaliacao', '>=', 4)->take(5)->where('categoria_produto_id', $categoria_produto->id)->get();
        return view('produto.categoria', compact('produtos', 'categoria_produto', 'produtos_famosos'));
    }

    //  Categoria produto FIm
}

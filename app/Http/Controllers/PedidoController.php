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

class PedidoController extends Controller
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
    public function listarPedidosDoUser() {
        $pedidos = Pedido::where('user_id', Auth::user()->id)
        ->orderByRaw('updated_at  DESC')
    ->get();
        // $produtos = Produto::all();
        //  dd($pedidos->produtos()->get());

        // return $pedidos;
        return view('pedido.listar_pedido', compact('pedidos'));
    }

    public function listarPedidosParaProdutor() {
        $pedidos = Pedido::whereHas('empresa', function ($query) {
            $query->where('user_id', Auth::user()->id);
    })->get();

        return view('pedido.listar_pedido_empresa', compact('pedidos'));
    }


    // Adicionar localização ao pedido

    public function loacalizacaoPedido($id) {
        $pedido = Pedido::find($id);
        return view('pedido.adicionar_localizacao', compact('pedido'));
    }

    public function adicionarLocalizacaoPedido (Request $request, $id) {

        $pedido = Pedido::find($id);
        $pedido->endereco_entrega = $request->endereco_entrega;
        $pedido->save();
        return redirect()->route('listaPedido');
    }
    // Adicionar localização ao pedido FIm 
}

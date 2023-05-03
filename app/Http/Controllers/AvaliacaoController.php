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

class AvaliacaoController extends Controller
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

    // Empresa Avaliação
    public function avaliarEmpresa($id, $empresa_id)
    {
        $pedido = Pedido::find($id);
        $empresa = Empresa::find($empresa_id);

        if ($pedido->avaliacaoempresa()->where('empresa_id', $empresa->id)->exists()) {
            return redirect()->back()->with('info', 'Já foi feito uma avaliação do produtor para esse pedido!');
        }
        return view('pedido.avaliar_pedido_empresa', compact('pedido', 'empresa'));
    }

    public function salvarAvaliacaoEmpresa(Request $request)
    {
        $empresa_id = $request->empresa_id;
        $pedido_id = $request->pedido_id;
        // dd($request);
        $usuario_logado = Auth::user();
        $avaliacao_empresa = AvaliacaoEmpresa::where('pedido_id', $pedido_id)->where('user_id', Auth::user()->id)
            ->where('empresa_id', $empresa_id)
            ->firstOrNew(
                ['pedido_id' => $pedido_id],
                ['empresa_id' => $empresa_id],
                ['user_id' =>  Auth::user()->id],


            );
        $avaliacao_empresa->descricao = $request->descricao;
        $avaliacao_empresa->avaliacao = $request->avaliacao;

        $avaliacao_empresa->save();

        //  problema ao tirar a media
        $empresa = Empresa::find($empresa_id);

        $empresa->avaliacao = AvaliacaoEmpresa::where('empresa_id', $empresa_id)->avg('avaliacao');

        $empresa->save();

        return redirect()->route('listaPedido');
    }
    // Empresa Avaliação FIM

    // Produto Avaliação
    public function avaliarProduto ($id, $produto_id) {
        $pedido = Pedido::find($id);
        $produto = Produto::find($produto_id);

        if ($pedido->avaliacaoproduto()->where('produto_id', $produto->id)->exists()) {
            return redirect()->back()->with('info','Já foi feito uma avaliação do produto para esse pedido!');
        }
        return view('pedido.avaliar_pedido_produto', compact('pedido', 'produto'));
    }
    public function salvarAvaliacaoProduto (Request $request) {
        $produto_id = $request->produto_id;
        $pedido_id = $request->pedido_id;
     //    dd($request);
         $usuario_logado = Auth::user();
         $avaliacao_produto = AvaliacoesProduto::where('pedido_id', $pedido_id)->where('produto_id', $produto_id)->where('user_id', Auth::user()->id)
             ->firstOrNew(
                 ['pedido_id' =>  $pedido_id],
                 ['produto_id' => $produto_id],
                 ['user_id' =>  Auth::user()->id],

             );
         $avaliacao_produto->descricao = $request->descricao;
         $avaliacao_produto->avaliacao = $request->avaliacao;

         $avaliacao_produto->save();

         $produto = Produto::find($produto_id);
         // if(empty($produto->avaliacao)){
         //    $produto->avaliacao = $request->avaliacao;
         // }
         $produto->avaliacao = AvaliacoesProduto::where('produto_id', $produto_id)->avg('avaliacao');
         // $produto->avaliacao = ($produto->avaliacao + $request->avaliacao)/2;

         $produto->save();
         return redirect()->route('listaPedido');
     }
    // Produto Avaliação Fim
}

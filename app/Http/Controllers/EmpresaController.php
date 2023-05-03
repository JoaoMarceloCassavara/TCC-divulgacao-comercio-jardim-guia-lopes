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

class EmpresaController extends Controller
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
        // $categoria_empresas = CategoriaEmpresa::all();
        // $cidades = Cidade::all();
        // return view('empresa.cadastrar', compact('categoria_empresas', 'cidades'));
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
     * Visualiza empresa com o id especificado
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
     * form de edição da empresa seria tipo get
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
     * edita no banco put seria tipo post
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
     *delite
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

//  Telas publicas da empresa
    public function listarEmpresas()
    {

            $empresas = Empresa::where('ativo', true)->get();
            $categoria_empresas = CategoriaEmpresa::all();
            return view('empresa.index', compact('empresas', 'categoria_empresas'));

    }
    public function empresaAtiva($id, Request $request) {
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
    }

    public function empresaId($id) {
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
    }
    //  Telas publicas da empresa FIm

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// cadastrar Empresa
    public function registrarEmpresa() {
        $categoria_empresas = CategoriaEmpresa::all();
        $cidades = Cidade::all();
        return view('empresa.cadastrar', compact('categoria_empresas', 'cidades'));
    }

    public function cadastrarEmpresa (Request $request) {
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
            // return new \App\Mail\SendMailAddEmpresa($empresa);
            \Illuminate\Support\Facades\Mail::send(new \App\Mail\SendMailAddEmpresa($empresa));

        }
        return redirect()->route('welcome')->with('success', 'Olá, sua empresa está sendo monitorada para verificação e posterior ativação. Qualquer novidade, entraremos em contato.');
    }
    // cadastrar Empresa FIM
    /////////////////////////////////////////////////////////////////////////////////////////////
    // Registrar usuario empresario

    public function registrarUserEmpresario () {
        $cidades = Cidade::all();
        return view('auth.registrar_empresario', compact('cidades'));
    }
    public function cadastrarUserEmpresario (Request $request) {
        //    dd($request);
        $create_user = new CreateNewUser();
        $usuario = $create_user->create($request->all());
        $role = \App\Models\Role::where('name', '=', 'empresario')->first();
        $usuario->role_id = $role->id;
        $usuario->cidade_id = $request->cidade_id;
        $usuario->save();
        return redirect()->route('empresa.cadastrar');
    }
    // Registrar usuario empresario FIM
}

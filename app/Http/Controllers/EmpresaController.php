<?php

namespace App\Http\Controllers;
use App\Models\Empresa;
use App\Models\CategoriaEmpresa;
use Illuminate\Http\Request;

class EmpresaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

            $empresas = Empresa::where('ativo', true)->get();
            $categoria_empresas = CategoriaEmpresa::all();
            return view('empresa.index', compact('empresas', 'categoria_empresas'));

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
    function cadastro (Request $request) {
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
}

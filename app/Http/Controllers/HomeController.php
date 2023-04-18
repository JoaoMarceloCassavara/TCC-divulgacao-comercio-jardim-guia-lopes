<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Empresa;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    // public function index()
    // {
    //     // return redirect()->route('voyager.dashboard');
    //     return redirect()->route('welcome');
    // }
    public function index()
    {
        // return redirect()->route('voyager.dashboard');
        $tipoUsuarioLogado = Auth::user()->role()->first();
        $quantidadeDeEmpresas = Empresa::where('user_id',Auth::user()->id)->count();
        // autorização para verificar o tipo de usuario
        if ($tipoUsuarioLogado->name == 'empresario'){
            return redirect()->route('empresa.cadastrar');
        }
        return redirect()->route('welcome');
    }
}

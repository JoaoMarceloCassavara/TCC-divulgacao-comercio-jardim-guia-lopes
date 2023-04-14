@extends('layouts.app')

@section('conteudo')
    <img src="/assets/images/imagem_de_fundo/Imagem_login.jpg" alt="descrição da imagem" class="imagem-fullscreen-login">

<div class="text-center pt-3 ">
    <h4>Deseja vender produtos, ou pedir produtos ?</h4>
</div>
    <div class="d-flex d-flex-center pb-5">
        <div class="botao_deseja_pedir">
            <a type="button" class="btn btn-danger btn-xl botoes_tamanho" href="{{ route('register') }}">
                <h4>Deseja Pedir ?</h4>
            </a>
        </div>
        <div class="text-center mx-3">
            <h2>ou</h2>
        </div>
        <div class="botao_deseja_vender d-block">
            <a type="button" class="btn btn-danger btn-xl botoes_tamanho " href="{{ route('auth.registrar_empresario') }}">
                <h4>Deseja Vender ?</h4>
            </a>
            <div class="d-block">
                <h6 style="color:rgba(86, 89, 2, 0.6);">Guia Lopes da Laguna ou Jardim</h6>
            </div>
        </div>

    </div>

@endsection

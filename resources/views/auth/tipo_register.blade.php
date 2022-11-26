@extends('layouts.app')

@section('conteudo')
    <div class="body-tipo-register ">
               <section class=" index_padding-tipo-register">

            <div class="tipo-register shadow p-3 mb-5 bg-body rounded">

                <header class="header_tipo_register">

                    <div class="text-center text_header_tipo_register">Deseja vender produtos, ou pedir produtos ?</div>
                </header>

                <div class="padding_bottom_deseja_pedir">
                    <div class="bottom_deseja_pedir">
                        <a class="btn btn-dark botao-pedir"href="{{route('register')}}">
                            <h1 class="text-pedir">Deseja Pedir</h1>
                        </a>
                    </div>
                </div>
                <div class="ou_tipo_register">
                    <p class="ou_tipo_register_text">OU</p>
                </div>
                <div class="bottom_deseja_vender">
                    <a class="btn btn-dark botao-pedir"href="{{route('auth.registrar_empresario')}}">
                        <h1 class="text-pedir">Deseja Vender?</h1>
                    </a>
                </div>




            </div>
    </div></section>


@endsection

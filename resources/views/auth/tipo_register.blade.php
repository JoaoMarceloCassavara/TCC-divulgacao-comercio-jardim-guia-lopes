@extends('layouts.app')

@section('conteudo')
    <div class="body-tipo-register ">
            <section class="tipo-register">

                <header class="header_tipo_register">
                    <div class="text-center text_header_tipo_register">Deseja vender produtos, ou pedir produtos ?</div>
                </header>

                <div class="padding_bottom_deseja_pedir">
                    <div class="bottom_deseja_pedir">
                        <a class="btn btn-dark botao-pedir"href="{{route('register')}}">
                            <h1 class="text-pedir">Deseja Pedir?</h1>
                        </a>
                    </div>
                </div>


                    <h6 class="ou_tipo_register_text">OU</h6>


                <div class="bottom_deseja_vender">
                    <a class="btn btn-dark botao-pedir"href="{{route('auth.registrar_empresario')}}">
                        <h1 class="text-pedir">Deseja Vender?</h1>
                    </a>

                    <h6 class="tipo_register-cidade">Guia Lopes da Laguna ou Jardim</h6>

                </div>
            </div>
        </section>


@endsection

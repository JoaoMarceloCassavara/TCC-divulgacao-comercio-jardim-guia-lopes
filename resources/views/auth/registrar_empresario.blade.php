@extends('layouts.app')

@section('conteudo')
<img src="/assets/images/imagem_de_fundo/Imagem_login.jpg" alt="descrição da imagem" class="imagem-fullscreen-register_empresario">

<section class="d-flex justify-content-evenly my-auto ">

    <div class="nome-logo">
        <h1 class="text-register-empresario">Divulgue seu <br>
            negócio em <br>
            nosso site!</h1>
            <img src="/assets/images/logo_do_site/Logo_sem_fundo.png" style="max-height: 200px; max-width:auto;" class="img-fluid" alt="Logo do site">


    </div>

     <div class="cadastro_empresario ">
        <div class="text-center py-5"><h4 class="fw-bold">{{ __('Cadastre-se Empreendedor') }}</h4></div>

        <div class="card-body">
            <form method="POST" action="{{ route('register.empresario') }}">
                @csrf

                {{-- <div class="row mb-3">
                    <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label> --}}

                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <input id="name" type="text" placeholder="Nome" class="form-control register-itens-empresario @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                        @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                {{-- </div> --}}

                {{-- <div class="row mb-3">
                    <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label> --}}

                    <div class="col-md-6 col-sm-12  register-itens-empresario-align py-2">
                        <input id="email" type="email" placeholder="Email" class="form-control register-itens-empresario @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                {{-- </div> --}}


                {{-- <div class="row mb-3">
                    <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label> --}}

                    <div class="col-md-6 col-sm-12  register-itens-empresario-align py-2">
                        <input id="password" type="password" placeholder="Senha" class="form-control register-itens-empresario @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                {{-- </div> --}}

                {{-- <div class="row mb-3">
                    <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Confirm Password') }}</label> --}}

                    <div class="col-md-6 col-sm-12  register-itens-empresario-align py-2">
                        <input id="password-confirm" type="password" placeholder="Repita Senha" class="form-control register-itens-empresario" name="password_confirmation" required autocomplete="new-password">
                    </div>
                    <div class="col-md-6 col-sm-12  col-sm-12 register-itens-empresario-align py-2">
                        <select class="form-select" aria-label="Default select example" name="cidade_id" id="cidade_id" >
                            <option selected>Selecione a Cidade </option>
                            @foreach ( $cidades as $cidade )
                            <option value="{{$cidade->id}}">{{$cidade->nome}}</option>

                            @endforeach
                          </select>
                        </div>
                {{-- </div> --}}

                <div class="text-center">
                    <div class="py-5">
                        <button type="submit" class="botao-register-empresario btn btn-danger  btn-lg">
                            <h4 class="text-white text-center"> {{ __('Continuar') }}</h4>
                        </button>
                    </div>
                </div>
            </form>
        </div>
     </div>



</section>
@section('rodape')

@endsection
@endsection

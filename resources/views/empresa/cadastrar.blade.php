@extends('layouts.app')

@section('conteudo')
    <img src="/assets/images/imagem_de_fundo/Imagem_login.jpg" alt="descrição da imagem"
        class="imagem-fullscreen-register_empresario">

    <section class="d-flex justify-content-evenly my-auto ">

        <div class="nome-logo">
            <h1 class="text-register-empresario">Divulgue seu <br>
                negócio em <br>
                nosso site!</h1>
            <img src="/assets/images/logo_do_site/Logo_sem_fundo.png" style="max-height: 200px; max-width:auto;"
                class="img-fluid" alt="Logo do site">

        </div>
        <div class="cadastro_empresario">
            <div class="text-center py-5">
                <h4 class="fw-bold">{{ __('Cadastre sua empresa') }}</h4>
            </div>

            <div class="card-body">
                <form method="POST" action="{{ route('empresa.salvar') }}">
                    @csrf

                    {{-- <div class="row mb-3">
                    <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label> --}}

                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <input id="nome" type="text" placeholder="Nome da Empresa"
                            class="form-control register-itens-empresario @error('nome') is-invalid @enderror"
                            name="nome" value="{{ old('nome') }}" required autocomplete="nome" autofocus>

                        @error('nome')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>


                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <input id="cnpj" type="text" placeholder="CNPJ"
                            class="form-control register-itens-empresario @error('cnpj') is-invalid @enderror"
                            name="cnpj" value="{{ old('cnpj') }}" required autocomplete="cnpj" autofocus>

                        @error('cnpj')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>


                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <input id="cpf" type="number" placeholder="CPF"
                            class="form-control register-itens-empresario @error('cpf') is-invalid @enderror" name="cpf"
                            value="{{ old('cpf') }}" required autocomplete="cpf" autofocus>

                        @error('cpf')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    {{-- </div> --}}

                    {{-- <div class="row mb-3">
                    <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label> --}}

                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <input id="endereco" type="text" placeholder="Endereço"
                            class="form-control register-itens-empresario @error('endereco') is-invalid @enderror"
                            name="endereco" value="{{ old('endereco') }}" required autocomplete="endereco">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <select class="form-select" aria-label="Default select example" name="cidade_id"
                            id="cidade_id"required>
                            <option value="" selected>Selecione a Cidade</option>
                            @foreach ($cidades as $cidade)
                                <option value="{{ $cidade->id }}">{{ $cidade->nome }}</option>
                            @endforeach
                        </select>
                        @error('cidade_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    {{-- </div> --}}


                    {{-- <div class="row mb-3">
                    <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label> --}}

                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <input id="telefone" type="tel" pattern="\([0-9]{2}\)\s?[0-9]{4,5}-[0-9]{4}"
                            placeholder="Telefone (99)99999-9999"
                            class="form-control register-itens-empresario @error('telefone') is-invalid @enderror"
                            name="telefone" required autocomplete="telefone">

                        @error('telefone')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="col-md-6 col-sm-12 register-itens-empresario-align py-2">
                        <select class="form-select" aria-label="Default select example" name="categoria_empresa_id"
                            id="categoria_empresa_id" required>
                            <option value="" selected>Selecione a categoria</option>
                            @foreach ($categoria_empresas as $categoria_empresa)
                                <option value="{{ $categoria_empresa->id }}">{{ $categoria_empresa->nome }}</option>
                            @endforeach
                        </select>
                        @error('categoria_empresa_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    {{-- </div> --}}

                    {{-- <div class="row mb-3">
                    <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Confirm Password') }}</label> --}}


                    {{-- </div> --}}

                    <div class="text-center">
                        <div class="py-5">
                            <button type="submit" class="botao-register-empresario btn btn-danger  btn-lg">
                                <h4 class="text-white text-center"> {{ __('Cadastrar') }}</h4>
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

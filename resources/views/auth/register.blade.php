@extends('layouts.app')

@section('conteudo')
<div class="body-register">

    <section class="index_padding">
        <div class="card-register p-3 mb-5 bg-body rounded">
                <div class="text-center py-4"><h1>{{ __('Cadastre-se agora') }}</h1></div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        {{-- <div class="row mb-3 ">
                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label> --}}

                            <div class="col-md-6 register-itens-align pt-5 pb-2">
                                <input id="name" type="text" placeholder="Nome" class="form-control register-itens  @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        {{-- </div> --}}
                           {{-- <div class="row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label> --}}

                            <div class="col-md-6 register-itens-align py-2">
                                <input id="email" type="email" placeholder="Email" class="form-control register-itens  @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        {{-- </div> --}}

                        {{-- <div class="row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label> --}}

                            <div class="col-md-6 register-itens-align py-2">
                                <input id="password" type="password" placeholder="Senha" class="form-control register-itens  @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        {{-- </div> --}}

                        {{-- <div class="row mb-3">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Confirm Password') }}</label> --}}

                            <div class="col-md-6 login-itens-align py-2">
                                <input id="password-confirm" type="password" placeholder="Comfirmar Senha" class="form-control register-itens " name="password_confirmation" required autocomplete="new-password">
                            </div>
                        {{-- </div> --}}

                        <div class="text-center">
                            <div class="py-5">
                                <button type="submit" class="botao-register btn btn-danger">
                                   <h4 class="text-white text-center"> {{ __('Cadastrar') }}</h4>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
            </section>

@endsection

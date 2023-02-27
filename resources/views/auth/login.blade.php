@extends('layouts.app')

@section('conteudo')

        <section class="body-login">
            <div class="card-login shadow p-3 mb-5 bg-body rounded">

                <div class="card-header-login text-center">{{ __('Login') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        {{-- <div class="row mb-3"> --}}
                        {{-- <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label> --}}

                        <div class="col-md-6 login-itens-align py-2">
                            <input id="email" type="email" placeholder="Email"
                                class="form-control login-itens @error('email') is-invalid @enderror" name="email"
                                value="{{ old('email') }}" required autocomplete="email" autofocus>

                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        {{-- </div> --}}

                        {{-- <div class="row mb-3"> --}}
                        {{-- <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label> --}}

                        <div class="col-md-6 login-itens-align py-2">
                            <input id="password" type="password" placeholder="Senha"
                                class="form-control  login-itens @error('password') is-invalid @enderror" name="password"
                                required autocomplete="current-password">

                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        {{-- </div> --}}

                        <div class="row mb-3 me-lembrar">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                        {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Me Lembrar') }}
                                    </label>
                                </div>
                            </div>
                        </div>


                        <div class="text-center">
                            <button type="submit" class="botao-login btn btn-danger">
                                <h4 class="text-white text-center"> {{ __('Login') }}</h4>
                            </button>

                            @if (Route::has('password.request'))
                                <div class="py-3">
                                    <a class="marcacao_a_remov esqueci_senha_cor text-success"
                                        href="{{ route('password.request') }}">
                                        {{ __('Esqueci minha senha :(') }}
                                    </a>
                                </div>
                            @endif
                            <div class="pt-3">
                                <a href="{{ route('auth.tipo_register') }}" class="btn btn-link ">Criar Conta</a>
                            </div>

                        </div>

                    </form>
                </div>



            </div>
        </section>
@endsection


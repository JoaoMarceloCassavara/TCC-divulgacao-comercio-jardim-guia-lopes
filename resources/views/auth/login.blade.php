@extends('layouts.app')
@section('menu')
@endsection
@section('conteudo')
    <img src="/assets/images/imagem_de_fundo/Imagem_login.jpg" alt="descrição da imagem" class="imagem-fullscreen">
    <section>
        <div class="card-login shadow p-3 mb-5 bg-body rounded">

            <div class="text-center py-5">
                <h4 class="fw-bold">{{ __('Login') }}</h4>
            </div>

            <div class="card-body">
                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    {{-- <div class="row mb-3"> --}}
                    {{-- <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label> --}}

                    <div class="col-md-6 col-sm-12  login-itens-align pt-5 pb-2">
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
                    <div class="form-group col-md-6 col-sm-12  login-itens-align py-2">
                        <div class="input-group ">
                            <input id="password" type="password" placeholder="Senha"
                                class="form-control  login-itens @error('password') is-invalid @enderror" name="password"
                                required autocomplete="current-password">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary login-itens" type="button" id="mostrarSenha"><i
                                        class="fa-regular fa-eye"></i></button>
                            </div>
                        </div>
                    </div>

                    {{-- </div> --}}

                    <div class="row mb-3 me-lembrar">
                        <div class="col-md-6 col-sm-12  offset-md-4">
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
    <script>
        // Função para alternar a visibilidade da senha
        function mostrarSenha() {
          var campoSenha = document.getElementById('password');
          var botaoMostrarSenha = document.getElementById('mostrarSenha');

          if (campoSenha.type === 'password') {
            campoSenha.type = 'text';
            //botaoMostrarSenha.textContent = 'Ocultar';
            botaoMostrarSenha.innerHTML = '<i class="fa-regular fa-eye-slash"></i>';
          } else {
            campoSenha.type = 'password';
            //botaoMostrarSenha.textContent = 'Mostrar';
                  botaoMostrarSenha.innerHTML = '<i class="fa-regular fa-eye"></i>';
          }
        }

        // Evento de clique para alternar a visibilidade da senha
        document.getElementById('mostrarSenha').addEventListener('click', mostrarSenha);
      </script>
@section('rodape')
@endsection

@endsection

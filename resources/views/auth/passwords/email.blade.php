@extends('layouts.app')

@section('conteudo')
    <div class="">

<section class="body_redefinir_senha">
            <div class="card_redefinir_senha shadow p-3 mb-5 bg-body rounded">
        <div class="card-header text-center py-4 fw-bold">{{ __('Redefinir Senha') }}</div>


                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        {{-- <div class="row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label> --}}

                            <div class="col-md-6 align-middle py-5 redefinir-senha-input">
                                <input id="email" type="email" placeholder="Digite seu e-mail" class="form-control  @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        {{-- </div> --}}


                            <div class="text-center">
                                <button type="submit" class="btn btn-danger botao_redefinir_senha">
                                  <h6 class=" text-white text-center">  {{ __('Enviar link de redefinição de senha') }}</h6>
                                </button>
                            </div>

                    </form>
                </div>
            </div>

@endsection
</section>

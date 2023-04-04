@extends('layouts.app')

@section('conteudo')
    <form method="POST" action="{{ route('salvarLocalizacaoUsuario', $pedido->id) }}">
        @csrf



        <div class="col-md-6 register-itens-empresario-align  py-2">
            <input id="endereco_entrega" type="text" placeholder="Endereço de entrega"
                class="form-control register-itens-empresario @error('endereco_entrega') is-invalid @enderror"
                name="endereco_entrega" value="{{ old('endereco_entrega') }}" required autocomplete="endereco_entrega"
                autofocus>

            @error('endereco_entrega')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="text-center">
            <div class="py-5">
                <button type="submit" class="botao-register-empresario btn btn-danger">
                    <h4 class="text-white text-center"> {{ __('Continuar') }}</h4>
                </button>
            </div>
        </div>
    </form>
@endsection

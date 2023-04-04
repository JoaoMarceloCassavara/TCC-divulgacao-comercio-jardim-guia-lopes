@extends('layouts.app')

@section('conteudo')
    <form method="POST" action="{{ route('salvarLocalizacaoUsuario', $pedido->id) }}">
        @csrf



        
    </form>
@endsection

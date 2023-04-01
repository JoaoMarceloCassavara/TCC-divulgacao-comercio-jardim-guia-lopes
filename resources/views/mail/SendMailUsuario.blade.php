@extends('layouts.app')
@section('menu')

@endsection
@section('conteudo')

@component('mail::message')


<h1 style="text-align: center">Acaba de realizar um pedido</h1>
@component('mail::button', ['url' =>'http://localhost:8000/admin/pedidos'] )
  Clique aqui para visualizar os pedidos
@endcomponent

@foreach ($pedidos as $pedido)
<h2 style="text-align: center; padding-top:20px; padding-bottom:20px;">Olá <span>{{$pedido->user->name}}</span> acaba de realizar um pedido</h2>
<h4>Confira os produtos:</h4>
@component('mail::subcopy')
@foreach ($pedido->produtos as $produto)
<div style="background-color:  rgba(232, 229, 212, 1);padding:30px; border-radius:10px; border: 5px solid green; ">
    <div style="text-align: center">
        <img src="{{ Voyager::image($produto->imagem) }}"width="140"
            height="120" style="border: 5px solid green;  border-radius:10px; " alt="Imagem do produto Pedido">
            <div style="padding-left: 13px;">
            <h4>Produto: {{ $produto->nome }}</h4>
            <h4>Produtor: {{$produto->empresa->nome}}</h4>
        </div>
    </div>
    <div style="padding-top: 5px; padding-left:20px">
        <h4 >Total do pedido: <span>{{$produto->getPreco()}}</span> </h4>
    </div>
    </div>
    @component('mail::subcopy')
    @endcomponent
@endforeach
@endforeach
@endcomponent



@endcomponent
@section('rodape')

@endsection

@endsection

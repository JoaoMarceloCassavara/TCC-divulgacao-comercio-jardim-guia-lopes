@extends('layouts.app')
@section('menu')

@endsection
@section('conteudo')

@component('mail::message')


<h1 style="text-align: center">Há um novo pedido</h1>
@component('mail::button', ['url' =>'http://localhost:8000/admin/pedidos'] )
  Clique aqui para visualizar os pedidos
@endcomponent
@component('mail::subcopy')
@foreach ($pedido->produtos as $produto)
<div style="background-color:  rgba(232, 229, 212, 1);padding:30px; border-radius:10px; border: 5px solid green; ">
    <div style="text-align: center">
        <img src="{{ Voyager::image($produto->imagem) }}"width="140"
            height="120" style="border: 5px solid green;  border-radius:10px; " alt="Imagem do produto Pedido">
            <h4>Produto: {{ $produto->nome }}</h4>
            <h4>Produtor: {{$produto->empresa->nome}}</h4>
    </div>
    <div style="padding-left:25px; padding-top:27px">
        <h2>Pedido Feito por:</h2>
        <h3>Usuário: {{$pedido->user->name}}</h3>
        <h3>Email do Usuário: {{$pedido->user->email}}</h3>
        <h3>Pedido feito: {{$produto->created_at}}</h3>
        @isset($pedido->data_entrega)
        <p>Entregue em: {{$pedido->data_entrega}}</p>
        @endisset
    </div>
    <div style="padding-top: 25px; text-align:center">
        <h4 >Total do pedido: <span>{{$produto->getPreco()}}</span> </h4>
    </div>
    @component('mail::button', ['url' =>'http://localhost:8000/admin/pedidos/'. $pedido->id] )
  Clique para visualizar
  @endcomponent
    </div>
    @component('mail::subcopy')

    @endcomponent
@endforeach
@endcomponent



@endcomponent
@section('rodape')

@endsection

@endsection

@extends('layouts.app')
@section('menu')

@endsection
@section('conteudo')

@component('mail::message')


<h1 class="text-center">Há um novo pedido</h1>
@component('mail::button', ['url' =>'http://localhost:8000/admin/pedidos'] )
  Clique aqui para visualizar os pedidos
@endcomponent
@component('mail::subcopy')
@foreach ($pedido->produtos as $produto)
<div class="card_pedido_email ps-5 pt-5 m-2 border border-5 border border-success  rounded-3">
    <div class="d-flex">
        <img src="{{ Voyager::image($produto->imagem) }}"width="170"
            height="150" class="border border-5  border border-success rounded-3" alt="Imagem do produto Pedido">
        <div class="cold-m-8 ps-2">
            <p class="fs-4">{{ $produto->nome }}</p>
            <p>{{$produto->empresa->nome}}</p>
            <p>Pedido feito: {{$produto->created_at}}</p>
            @isset($pedido->data_entrega)
            <p>Entregue em: {{$pedido->data_entrega}}</p>
            @endisset
        </div>
    </div>
    <div class="py-3">
        <h6 class="d-block my-2 fw-bold">Total do pedido: {{$produto->getPreco()}} </h6>
    </div>
    </div>
    @component('mail::subcopy')

    @endcomponent
@endforeach
@endcomponent



@endcomponent
@section('rodape')

@endsection

@endsection

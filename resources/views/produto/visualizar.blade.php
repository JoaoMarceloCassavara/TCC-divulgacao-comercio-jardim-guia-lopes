@extends('layouts.app')

@section('conteudo')
<section class="d-flex flex-wrap justify-content-evenly align-items-center ">
<div id="cardapio" class="card shadow " >
    <img src="{{ Voyager::image($produto?->imagem) }}" height="500"  class="card-img-top" alt="Imagem do Produto">
    <div class="card-body">
      <h5 class="card-title">{{ $produto->nome }}</h5>
      <p class="card-text">{{ $produto->descricao }}</p>
      <h1>{{$numeros_pedido}}</h1>
      <p class="card-text"><small class="text-muted">{{ $produto->preco }}</small></p>
    </div>
  </div>
</section>
@endsection



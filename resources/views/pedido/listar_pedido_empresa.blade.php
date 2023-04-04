@extends('layouts.app')

@section('conteudo')
    <header class="pt-5 ps-5">
        <h4>Pedidos para o produtor</h4>
    </header>
    @php
        $count = $pedidos->count();
    @endphp
    @forelse ($pedidos->sortByDesc('created_at') as $pedido)
        @foreach ($pedido->produtos as $produto)
            <div class="m-4">
                <div class="card_pedido_empresario p-5 border border-5 border border-success  rounded-3">
                    <div class="d-flex justify-content-center">
                        <div class=" ">
                            <img src="{{ Voyager::image($produto->imagem) }}"width="170" height="150"
                                class="border border-5  border border-success rounded-3 " alt="Imagem do produto Pedido">
                        </div>
                        <div class="ps-3">
                            <h4>{{ $produto->nome }}</h4>
                         <div class="pt-3">

                            <h6>{{ $produto->empresa->nome }}</h6>
                            <h6>{{ $produto->empresa->email }}</h6>

                        </div>

                            @isset($pedido->data_entrega)
                                <p>Entregue em: {{ $pedido->data_entrega }}</p>
                            @endisset
                        </div>
                    </div>

               <div class="text-center pt-4 ">
                <h6>Usuário que fez o pedido: {{$pedido->user->name}}</h6>
                <h6>Email do Usuário: {{$pedido->user->email}}</h6>
                <h6>Pedido feito: {{ $pedido->created_at->format('d/m/Y H:i:s') }}</h6>
                <p class="fw-bold fs-5 m-1">Pedido N°{{ $count }}</p>
               </div>

                    <div class="pt-4 text-center">
                        <h5 class="d-block my-2 fw-bold">Total do pedido: {{ $produto->getPreco() }} </h5>
                    </div>
                </div>
            </div>
        @endforeach













        @php
            $count--;
        @endphp
    @empty
        <div class="ps-4 py-3">
            <div class="alert alert-success w-25  " role="alert">
                <p class="text-center">Você não possui nenhum pedido!!</p>
            </div>
        </div>
    @endforelse




@endsection

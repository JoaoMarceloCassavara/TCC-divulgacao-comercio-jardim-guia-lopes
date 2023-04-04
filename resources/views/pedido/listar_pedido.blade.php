@extends('layouts.app')

@section('conteudo')
    <header class="pt-5 ps-5">
        <h4>Meus Pedidos</h4>
    </header>
    @php
        $count = $pedidos->count();
    @endphp
    @forelse ($pedidos->sortByDesc('created_at') as $pedido)
        <section class="py-3">
            <div class="card_lista_pedidos">
                <p class="fw-bold fs-5 m-1">Pedido N°{{ $count }}</p>
              @foreach ( $pedido->produtos as $produto )
                    <div class="card_lista_pedidos_produto py-5 d-flex justify-content-around">
                        <div class="d-flex">
                            <img src="{{ Voyager::image($produto->imagem) }}"width="150" height="150" class=""
                                alt="Imagem do produto Pedido">
                            <div class="cold-m-8 ps-4">
                                <h3>{{ $produto->nome }}</h3>
                                <p>{{ $produto->empresa->nome }}</p>
                                <p>Pedido feito: {{ $pedido->created_at->format('d/m/Y H:i:s') }}</p>

                                @isset($pedido->data_entrega)
                                    <p>Entregue em: {{ $pedido->data_entrega }}</p>
                                @endisset
                            </div>
                        </div>
                        <div class="">
                            <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov"
                                href="{{ route('avaliarproduto', ['id' => $pedido->id, 'produto_id' => $produto->id]) }}">Avaliar
                                o produto</a>




                            <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov"
                                href="{{ route('avaliarempresa', ['id' => $pedido->id, 'empresa_id' => $pedido->empresa->id]) }}">Avaliar
                                Empresa</a>

                            <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov"
                                href="{{ route('adicionarLocalizacao', ['id' => $pedido->id]) }}">Adicionar
                                localização </a>

                            <h6 class="d-block my-2 fw-bold">Total do pedido {{ $produto->getPreco() }} </h6>



                        </div>
                    </div>
                    @endforeach

            </div>
        </section>

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

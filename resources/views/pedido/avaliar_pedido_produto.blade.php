@extends('layouts.app')

@section('conteudo')
    <header class="py-5 ps-4 ">
        <h4 class="fw-bold">Avalie seu pedido</h4>
    </header>

    <form method="POST" action="{{ route('avaliacao.produto.salvar') }}">
        @csrf
        <input type="hidden" name="produto_id" value="{{$produto->id}}">
    <section class="py-1">
        <div class="card_avaliacao_produto_add p-4 d-flex rounded-3 ms-5">
            <img src="{{ Voyager::image($produto->imagem) }}"width="150"
                height="150" class="" alt="Imagem do produto Pedido" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
            <div class="ps-4">



                {{-- <h3>{{ $pedido?->produto?->nome}}</h3> --}}
                 {{-- {{ $pedido->id }} --}}
                {{-- {{$produto->nome}} --}}
                {{-- <h3>{{ $pedido->id}}</h3> --}}

                {{-- {{$produto->pivot->avaliacao;}} --}}

                <h4>{{$produto->nome}}</h4>
                <p>{{$produto->empresa->nome}}</p>
                <p>Entregue em 23/01/2022 às 14:25</p>
            </div>
        </div>
        <div class="py-5 ps-4">
            <h4 class="fw-bold">Classifique o produto</h4>

            <div class="ps-4">
                <label for="avaliacao" class="rating-label">
                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$produto->avaliacao}}" >
                </label>

            </div>

        </div>

        <div class="py-4 ps-4">
            <h4 class="fw-bold">Descrição da avaliação</h4>

            <div class="form-floating ">
                <textarea name="descricao" class="form-control textarea-avaliacao" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px; width:750px"></textarea>
                <label for="floatingTextarea2">Do que gostou no produto? Compraria novamente? Alguma recomendação?</label>
            </div>
        </div>
        <hr>
        <div class="py-3 mb-3 ps-5 ">
            <button type="submit" class="btn btn-success p-2">Enviar sua avaliação</button>
        </div>

    </section>
   </form>
@endsection

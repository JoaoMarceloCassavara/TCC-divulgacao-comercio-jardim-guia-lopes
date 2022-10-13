@extends('layouts.app')

@section('conteudo')
    <section class=" d-flex flex-wrap index_produto">
        @forelse ($produtos as $produto)
            <a class="m-4  card-link" href="{{ route('produto.visualizar', ['id' => $produto->id]) }}">
                <div class="card shadow p-4">

                    <img src="{{ Voyager::image($produto->imagem) }}" width="245" height="245" alt="Imagem do produto">

                    <div class="card-body text-center text-white">
                        <h5 class="card-title">{{ $produto->nome }}</h5>
                        <p class="card-text">{{ $produto->descricao }}</p>
                        <p class="card-text">Preço${{ $produto->preco }} </p>
                    </div>
                </div>
            </a>

        @empty
            <p>Nenhum produto cadastrado para essa empresa</p>
        @endforelse
    </section>
    <section class="Categoria_produto" >
        <div class="card-categoria">
            <img src="https://conteudo.imguol.com.br/c/entretenimento/fa/2019/04/18/legumes-e-verduras-1555620381375_v2_600x600.jpg.webp"
                class="rounded-pill" alt="Imagem da categoria">
            <div class="card-body text-center">
                <h5 class="card-title">Verduras</h5>

            </div>
        </div>
    </section>
@endsection

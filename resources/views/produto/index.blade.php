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
            <p>Nenhum produto cadastrado</p>
        @endforelse
    </section>
    <section class="Categoria_produto d-flex" >

        @forelse ($categoria_produtos as $categoria_produto)
        <a class="m-4  " href="{{ route('produto.categoria', ['id' => $categoria_produto->id]) }}">
        <div class="card-categoria m-2">
            <img src="{{ Voyager::image($categoria_produto->imagem) }}"
                class="rounded-pill" alt="Imagem da categoria">
            <div class="card-body text-center">
                <h5 class="card-title">{{ $categoria_produto->nome }}</h5>

            </div>
        </div>
        </a>
        @empty
        <p>Nenhuma Categoria Pruduto cadastrado</p>
    @endforelse
    </section>
@endsection

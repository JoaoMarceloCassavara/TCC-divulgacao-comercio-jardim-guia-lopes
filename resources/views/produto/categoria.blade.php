@extends('layouts.app')

@section('conteudo')
    <section class=" d-flex flex-wrap index_padding">
        @forelse ($produtos as $produto)

                <div class="card shadow p-4">

                    <img src="{{ Voyager::image($produto->imagem) }}" width="245" height="245" alt="Imagem do produto">

                    <div class="card-body text-center text-white">
                        <h5 class="card-title">{{ $produto->nome }}</h5>
                        <p class="card-text">{{ $produto->descricao }}</p>
                        <p class="card-text">Preço${{ $produto->preco }} </p>
                    </div>
                </div>

 @empty
            <p>Nenhum produto cadastrado</p>
        @endforelse
    </section>
@endsection

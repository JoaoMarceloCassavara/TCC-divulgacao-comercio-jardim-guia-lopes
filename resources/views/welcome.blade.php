@extends('layouts.app')

@section('conteudo')
<section class="d-flex flex-wrap justify-content-evenly align-items-center ">
    @forelse ($produtos as $produto)
        <a class="m-2  card-link" href="{{ route('produto', ['id' => $produto->id]) }}">
            <div class="card shadow p-4">

                <img src="{{ $produto->imagem }}" width="245" height="245" alt="Imagem do Produto">

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
@endsection

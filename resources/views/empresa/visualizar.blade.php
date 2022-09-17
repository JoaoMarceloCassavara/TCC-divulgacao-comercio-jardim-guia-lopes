@extends('layouts.app')

@section('conteudo')
<section class="d-flex flex-wrap justify-content-evenly align-items-center ">


    <div class="card mb-3">
        <img  src="{{ $empresa->imagem }}"width="700" height="300" alt="...">
        <div class="card-body">
          <h3 class="card-title">{{ $empresa->nome }}</h3>
          <p class="card-text">{{ $empresa->descricao }} </p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>

        <div class= "margin: 10 px"><h1 class="text-md-start">Produtos</h1></div>


        <div class="d-flex justify-content-evenly left:10">
        @forelse ($produtos as $produto)

        <div class="card shadow h-100" >
            <div class="w3grayscale">
                <div class="w3-half">
                    <img src="{{ $produto->imagem }}"width="250" height="250" class="flex-shrink-0 me-3"
                        alt="...">
                    <div>
                        <div class="card-body" >
                            <h5 class="mt-0">{{ $produto->nome }}</h5>
                            <p>{{ $produto->descricao }}</p>
                            <a>Preço${{ $produto->preco }} </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
            @empty
                <p>Nenhum produto cadastrado para essa empresa</p>
    @endforelse

</div>
</section>
@endsection



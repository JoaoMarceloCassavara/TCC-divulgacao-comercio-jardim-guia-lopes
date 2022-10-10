@extends('layouts.app')

@section('conteudo')


    <div class="row g-0; visualizar_empresa">
      <div class="col-md-4">
        <img class="Visualizar_empresa_img" src="{{Voyager::image( $empresa->foto) }}" class="img-fluid rounded-start" alt="Imagem da Empresa">
          <img src="{{Voyager::image( $empresa->logo) }}" alt="Logo da Empresa" class="Visualizar_empresa_logo">
          <h5  class="card-title logo">{{ $empresa->nome }}</h5>
      </div>

      <div class="col-md-8">
        <div class="card-body  visualizar_descricao_empresa">
          <h5 class="fw-bolder">Sobre o Negócio</h5>
          <p class="fw-lighter">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

          <h6 class="fw-bolder">Telefone</h6>
          <p class="fw-lighter">{{ $empresa->telefone}}</p>


          <h6 class="fw-bolder">Endereço</h6>
          <p class="fw-lighter">{{ $empresa->endereco}}</p>

        </div>
      </div>
    </div>



<h1>Produto</h1>
<section class=" d-flex flex-wrap index_produto">
    @forelse ($produtos as $produto)

            <div class="card shadow p-4">

                <img src="{{Voyager::image( $produto->imagem) }}" width="245" height="245" alt="Imagem do produto">

                <div class="card-body text-center text-white">
                    <h5 class="card-title">{{ $produto->nome }}</h5>
                    <p class="card-text">{{ $produto->descricao }}</p>
                    <p class="card-text">Preço${{ $produto->preco }} </p>
                </div>
            </div>


    @empty
        <p>Nenhum produto cadastrado para essa empresa</p>
    @endforelse
</section>

@endsection



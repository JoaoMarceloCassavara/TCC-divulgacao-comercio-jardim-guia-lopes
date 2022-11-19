@extends('layouts.app')

@section('conteudo')
    <div class="row g-0; visualizar_empresa">
        <div class="col-md-4">
            <img class="Visualizar_empresa_img" src="{{ Voyager::image($empresa->foto) }}" class="img-fluid rounded-start"
                alt="Imagem da Empresa">
            <img src="{{ Voyager::image($empresa->logo) }}" alt="Logo da Empresa" class="Visualizar_empresa_logo">
            <h5 class="card-title logo">{{ $empresa->nome }}</h5>
        </div>

        <div class="col-md-8">
            <div class="card-body  visualizar_descricao_empresa">
                <h5 class="fw-bolder">Sobre o Negócio</h5>
                <p class="fw-lighter">{{ $empresa->descricao }}</p>

                <h6 class="fw-bolder">Telefone</h6>
                <p class="fw-lighter">{{ $empresa->telefone }}</p>


                <h6 class="fw-bolder">Endereço</h6>
                <p class="fw-lighter">{{ $empresa->endereco }}</p>

            </div>
        </div>
    </div>



    <h1>Produto</h1>
    <section class=" d-flex flex-wrap index_padding">
        @forelse ($produtos as $produto)
            <a class="m-2  card-link"
            {{-- botao Modal --}}
            data-bs-toggle="modal" data-bs-target="#exampleModal"
          {{-- Final botao Modal --}}
            >
                <div class="card shadow p-4">

                    <img src="{{ Voyager::image($produto->imagem) }}" width="210" height="185"  alt="Imagem do produto">

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


    {{-- Inicio modal --}}
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">



            <section class=" d-flex flex-wrap index_padding">


                <div class="col-md-4">
                    <div class="card-modal shadow p-4 m-2 ">
                    <img src="{{ Voyager::image($produto->imagem) }}" class="modal-imagem"  alt="Imagem do produto">
</div>
</div>

                <div class="col-md-8">
                    <div class="card-body ">
                        <h5 class="card-title modal-font-produto">{{ $produto->nome }}</h5>
                    </div>
                </div>
            </section>


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>

  {{-- Final MOdal --}}

@endsection

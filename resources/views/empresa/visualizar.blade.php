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


{{-- Todos os Produtos --}}
    <header>
        <h1>Produtos</h1>
    </header>
    <section class=" d-flex flex-wrap index_padding">
        @forelse ($produtos as $produto)
            <a class="m-2  card-link"
            {{-- botao Modal --}}
            data-bs-toggle="modal" data-bs-target="#produto-modal-{{$produto->id}}"
          {{-- Final botao Modal --}}
            >
                <div class="card shadow p-4">

                    <img src="{{ Voyager::image($produto->imagem) }}" width="210" height="185" class="imagem-produto  alt="Imagem do produto">

                    <div class="card-body text-center text-white">
                        <h5 class="card-title">{{ $produto->nome }}</h5>
                        <p class="card-text">{{ $produto->descricao }}</p>
                        <p class="card-text">{{ $produto->categoria->nome }}</p>
                        <p class="card-text">Preço${{ $produto->preco }} </p>
                    </div>
                </div>
            </a>
{{-- Todos os produtos Final --}}
            {{-- Inicio modal --}}
  <!-- Modal -->
    <div class="modal fade" id="produto-modal-{{$produto->id}}" tabindex="-1" aria-labelledby="produto-modal-{{$produto->id}}Label" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content modal-margin">
        <div class="modal-header">
          <h5 class="modal-title" id="produto-modal-{{$produto->id}}Label">Produto</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">



            <section class=" d-flex flex-wrap index_padding">


                <div class="col-md-4">
                    <div class="card-modal shadow p-4 m-2 ">
                    <img src="{{ Voyager::image($produto->imagem) }}" class="modal-imagem" class="imagem-produto  alt="Imagem do produto">
</div>
</div>

                <div class="col-md-8">
                    <div class="card-text-modal ">
                        <h5 class="card-title modal-font-produto">{{ $produto->nome }}</h5>


                        <fieldset class="rating">
                            <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                            <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                            <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                            <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                            <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                            <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                            <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                            <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                            <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                            <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                        </fieldset>



                        <p class="paragrafo-pedido" >65 pedidos</p>
                       <div class="input-ajuste">

                       <h4>Alguma observação?</h4>
                        <div class="input-group input-group-lg input-campo-modal ">

                            <input type="text" class="form-control"placeholder="Ajuste" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                          </div>
                          </div>
                    </div>
                </div>
            </section>


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Voltar</button>
          <button type="button" class="btn btn-dark "         data-id="{{ $produto->id }}"
            data-imagem="{{ Voyager::image($produto->imagem) }}"
            data-preco="{{ $produto->preco }}"
            data-nome="{{ $produto->nome }}"
            onclick="adicionarItemNoCarrinho();">Adicionar ao carrinho</button>
        </div>
      </div>
    </div>
  </div>

  {{-- Final MOdal --}}

 @empty
            <p>Nenhum produto cadastrado</p>
        @endforelse
    </section>
{{-- Produto por categoria --}}

    @forelse ($produtos as $produto)

    {{}}

    @empty

    @endforelse

{{-- Produto por categoria final --}}

@endsection

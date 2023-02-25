@extends('layouts.app')

@section('conteudo')
    <header class="pt-5 ps-4">
        <h1>Produtos por categoria</h1>
    </header>
    <section class="d-flex flex-wrap py-4 ps-5">
        @forelse ($produtos as $produto)
            <a {{-- botao Modal --}} data-bs-toggle="modal" data-bs-target="#produto-modal-{{ $produto->id }}"
                {{-- Final botao Modal --}}>
                <div class="card-link m-2 p-4">

                    <img src="{{ Voyager::image($produto->imagem) }}" width="200" height="185" class="rounded-2"
                        alt="Imagem do produto"
                        onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">

                    <div class="card-componente">
                        <h5 class="card-title">{{ $produto->nome }}</h5>
                        <p class="card-text">{{ $produto->descricao }}</p>
                        <p class="card-text">Preço {{ $produto->getPreco() }} </p>
                    </div>
                </div>
            </a>

            {{-- Inicio modal --}}
            <!-- Modal -->
            <div class="modal fade" id="produto-modal-{{ $produto->id }}" tabindex="-1"
                aria-labelledby="produto-modal-{{ $produto->id }}Label" aria-hidden="true">
                <div class="modal-dialog modal-xl ">
                    <div class="modal-content modal-produto">
                        <div class="modal-header">
                            <h5 class="modal-title" id="produto-modal-{{ $produto->id }}Label">Produto</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="d-flex ps-5 ">
                                <div class="modal-card-produto p-4 rounded-3">
                                    <img src="{{ Voyager::image($produto->imagem) }}" width="170" height="160"
                                        class="rounded-3" alt="Imagem do produto"
                                        onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                                </div>

                                <div class="ps-4">

                                    <p class=" fw-bold fs-3">{{ $produto->nome }}</p>
                                    <input class="rating py-2" type="range" value="{{$produto->avaliacao}}" disabled>
                                    <fieldset class="rating">
                                        <input type="radio" id="star5" name="rating" value="5" /><label
                                            class="full" for="star5" title="Awesome - 5 stars"></label>
                                        <input type="radio" id="star4half" name="rating" value="4 and a half" /><label
                                            class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                                        <input type="radio" id="star4" name="rating" value="4" /><label
                                            class="full" for="star4" title="Pretty good - 4 stars"></label>
                                        <input type="radio" id="star3half" name="rating" value="3 and a half" /><label
                                            class="half" for="star3half" title="Meh - 3.5 stars"></label>
                                        <input type="radio" id="star3" name="rating" value="3" /><label
                                            class="full" for="star3" title="Meh - 3 stars"></label>
                                        <input type="radio" id="star2half" name="rating" value="2 and a half" /><label
                                            class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                                        <input type="radio" id="star2" name="rating" value="2" /><label
                                            class="full" for="star2" title="Kinda bad - 2 stars"></label>
                                        <input type="radio" id="star1half" name="rating" value="1 and a half" /><label
                                            class="half" for="star1half" title="Meh - 1.5 stars"></label>
                                        <input type="radio" id="star1" name="rating" value="1" /><label
                                            class="full" for="star1" title="Sucks big time - 1 star"></label>
                                        <input type="radio" id="starhalf" name="rating" value="half" /><label
                                            class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                                    </fieldset>
                                    <div class="py-5">
                                        <p class="fw-bold fs-5">Pedidos {{ $produto->pedidos->count()}}</p>
                                    </div>
                                </div>


                            </div>
                            <div class="d-flex">
                                <div class="pt-5 ps-4">
                                    @isset($produto->video_curto)


                                <iframe width="300" height="290" src="{{$produto->video_curto}}" title="{{$produto->nome}}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                @endisset
                            </div>
                            <div class="pt-5 ps-3">
                                <h1>Descrição</h1>
                                <p>{{$produto->descricao}}</p>

                            </div>

                        </div>


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Voltar</button>
                            <button type="button" class="btn btn-dark " data-id="{{ $produto->id }}"
                                data-imagem="{{ Voyager::image($produto->imagem) }}" data-preco="{{ $produto->preco }}"
                                data-nome="{{ $produto->nome }}" onclick="adicionarItemNoCarrinho();">Adicionar ao
                                carrinho</button>
                        </div>
                        <hr class="border border-dark ">

                        <header class="ps-3 py-4">
                            <p class="fw-bold fs-4">Avaliações</p>
                        </header>
                        @forelse ($produto->avaliacoes as $avaliacao)
                            <div class="card_avaliacao_produto rounded-3 shadow  mb-5 bg-body rounde">
                                <div class="d-flex bd-highlight mb-3  m-3">
                                    <div class="d-flex align-items-center">
                                        <div class="py-5 flex-shrink-0">
                                            <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="160"
                                                height="140" alt="Imagem do produto" class="rounded-circle"
                                                onerror="this.onerror=null;this.src='{{ asset('assets/images/images_usuario/foto_sem_icone.jpg') }}';">
                                            <div>
                                                <fieldset class="rating">
                                                    <input type="radio" id="star5" name="rating"
                                                        value="5" /><label class="full" for="star5"
                                                        title="Awesome - 5 stars"></label>
                                                    <input type="radio" id="star4half" name="rating"
                                                        value="4 and a half" /><label class="half" for="star4half"
                                                        title="Pretty good - 4.5 stars"></label>
                                                    <input type="radio" id="star4" name="rating"
                                                        value="4" /><label class="full" for="star4"
                                                        title="Pretty good - 4 stars"></label>
                                                    <input type="radio" id="star3half" name="rating"
                                                        value="3 and a half" /><label class="half" for="star3half"
                                                        title="Meh - 3.5 stars"></label>
                                                    <input type="radio" id="star3" name="rating"
                                                        value="3" /><label class="full" for="star3"
                                                        title="Meh - 3 stars"></label>
                                                    <input type="radio" id="star2half" name="rating"
                                                        value="2 and a half" /><label class="half" for="star2half"
                                                        title="Kinda bad - 2.5 stars"></label>
                                                    <input type="radio" id="star2" name="rating"
                                                        value="2" /><label class="full" for="star2"
                                                        title="Kinda bad - 2 stars"></label>
                                                    <input type="radio" id="star1half" name="rating"
                                                        value="1 and a half" /><label class="half" for="star1half"
                                                        title="Meh - 1.5 stars"></label>
                                                    <input type="radio" id="star1" name="rating"
                                                        value="1" /><label class="full" for="star1"
                                                        title="Sucks big time - 1 star"></label>
                                                    <input type="radio" id="starhalf" name="rating"
                                                        value="half" /><label class="half" for="starhalf"
                                                        title="Sucks big time - 0.5 stars"></label>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <div class="py-5 flex-grow-1 ms-3 p-2 bd-highlight">
                                            <p class="text-brea">{{ $avaliacao->usuario->name }} </p>
                                            {{-- <p>{{ $avaliacao->avaliacao }}</p> --}}


                                            <p>{{ $avaliacao->updated_at }}</p>

                                        </div>

                                    </div>

                                    <div class="d-flex align-items-center w-50 p-3 ms-auto p-2 bd-highlight ">

                                        <p class="text-break">{{ $avaliacao->descricao }}</p>

                                    </div>

                                </div>

                            </div>





                        @empty
                            <p class="alert alert-success">Nenhuma avaliação cadastrada para esse produto</p>
                        @endforelse

                    </div>
                </div>
            </div>

            {{-- Final MOdal --}}

        @empty
            {{-- @if (sizeof($categoria_produtos) == 0) --}}
            <p class="alert alert-success">Nenhum produto cadastrado</p>
            {{-- @endif --}}
        @endforelse
    </section>
@endsection

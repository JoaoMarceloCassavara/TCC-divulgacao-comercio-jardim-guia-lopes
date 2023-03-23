@extends('layouts.app')

@section('conteudo')
    <header class="pt-5 ps-4">
        <h4>A procura por Produtos</h4>
    </header>

    <section class="d-flex flex-wrap pt-2 pb-5 ps-5">
        @forelse ($categoria_produtos as $categoria_produto)
            <a class="marcacao_a_remov text-black" href="{{ route('produto.categoria', ['id' => $categoria_produto->id]) }}">
                <div class="card_categoria_produto rounded-3 p-5 m-2">
                    <img src="{{ Voyager::image($categoria_produto->imagem) }}" width="120" height="95" class="rounded-3"
                        alt="Imagem Da categoria Dos Produtos"
                        onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                    <div class="text-center py-2">
                        <p class="fs-5 card-title">{{ $categoria_produto->nome }}</p>
                    </div>
                </div>
            </a>
        @empty
        <div class="ps-4">
            <div class="alert alert-success " role="alert">
              <p class="text-center">Nenhuma categoria para Produto cadastrada.</p>
            </div>
        </div>
        @endforelse
    </section>


    <header class="pt-5 ps-4">
        <h4>Todos os produtos</h4>
    </header>
    <section class="d-flex flex-wrap pt-2 pb-5 ps-5">
        @forelse ($produtos as $produto)
            <a {{-- botao Modal --}} data-bs-toggle="modal" data-bs-target="#produto-modal-{{ $produto->id }}"
                {{-- Final botao Modal --}}>
                <div class="card-link m-2 p-4">

                    <img src="{{ Voyager::image($produto->imagem) }}" width="220" height="180" class="rounded-2"
                        alt="Imagem do produto"
                        onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">

                    <div class="p-1 text-center">
                        <h5 class="pt-3">{{ $produto->nome }}</h5>
                        <p class="">{{ $produto->empresa->nome }}</p>

                        <div class="ps-5 ">
                            <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range"
                                    max="5" step="0.5" value="{{ $produto->avaliacao ?? 0 }}" disabled>
                            </label>
                        </div>
                        <p class="pt-1">Preço {{ $produto->getPreco() }}
                            {{-- @isset($produto->avaliacao)
                            <span class="text-warning ps-1 "><i class="fa-sharp fa-solid fa-star"></i> {{$produto->avaliacao}}</span>
                            @endisset
                            @empty($produto->avaliacao)
                         <span class="text-warning ps-1"><i class="fa-sharp fa-solid fa-star"></i> 0</span>
                           @endempty --}}
                        </p>
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
                                    <div class="d-flex">
                                        {{-- <input class="rating py-2" type="range" value="{{$produto->avaliacao}}" disabled> --}}
                                        <label for="avaliacao" class="rating-label">
                                            <input class="rating rating--nojs" id="avaliacao" name="avaliacao"
                                                type="range" max="5" step="0.5"
                                                value="{{ $produto->avaliacao ?? 0 }}" disabled>
                                        </label>

                                    <div>
                                        <p class="text-decoration-underline text-success">
                                            ({{ $produto->avaliacoes->count() }} avaliações de clientes)</p>
                                    </div>
                                </div>
                                <div class="py-2">
                                    <p class="fw-bold fs-6">Pedidos {{ $produto->pedidos->count() }}</p>
                                    <p class="pt-1 fw-bold fs-5">Preço {{ $produto->getPreco() }}
                                </div>
                            </div>


                        </div>
                        <div class="d-flex">
                            <div class="pt-5 ps-4">
                                @isset($produto->video_curto)
                                    <iframe width="300" height="290" src="{{ $produto->video_curto }}"
                                        title="{{ $produto->nome }}" frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                        allowfullscreen></iframe>
                                @endisset
                            </div>
                            <div class="pt-5 ps-3">
                                <h4>Descrição</h4>
                                <p>{{ $produto->descricao }}</p>

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
                        <div class=" rounded-3 shadow ms-3 me-3  mb-5 bg-body rounde">
                            <div class="d-flex p-2 bd-highlight mb-3  m-3 ">
                                <div class="d-flex align-items-center">
                                    <div class="pt-5 flex-shrink-0 ">
                                        <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140"
                                            height="120" alt="Imagem avatar" class="rounded-circle"
                                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                                        <div class="ps-2 pt-3">
                                            <label for="avaliacao" class="rating-label">
                                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao"
                                                    type="range" max="5" step="0.5"
                                                    value="{{ $avaliacao->avaliacao ?? 0  }}" disabled>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="ps-3">
                                        <p class="text-break w-auto ">{{ $avaliacao->usuario->name }} </p>
                                        {{-- <p>{{ $avaliacao->avaliacao }}</p> --}}


                                        <p>{{ $avaliacao->updated_at }}</p>

                                    </div>

                                </div>

                                <div class="d-flex align-items-center w-50 p-3 ms-auto  ">

                                    <p class="text-break">{{ $avaliacao->descricao }}</p>

                                </div>

                            </div>

                        </div>





                    @empty
                    <div class="ps-4">
                        <div class="alert alert-success w-25" role="alert">
                          <p class="text-center">Nenhuma avaliação cadastrada para esse produto.</p>
                        </div>
                    </div>
                    @endforelse

                </div>
            </div>
        </div>

        {{-- Final MOdal --}}

    @empty
        {{-- @if (sizeof($categoria_produtos) == 0) --}}
        <div class="ps-4">
            <div class="alert alert-success " role="alert">
              <p class="text-center">Nenhum produto cadastrado.</p>
            </div>
        </div>
        {{-- @endif --}}
    @endforelse
</section>
@endsection

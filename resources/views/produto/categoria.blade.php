@extends('layouts.app')

@section('conteudo')
<header class="mb-5 ">
    <div class="text-center position-relative">
    <img src="{{ Voyager::image($categoria_produto->imagem) }}" height="350" class="categoria-imagem-categoria rounded-bottom"
    alt="Imagem do produto"
    onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
</div>
<div class=" header_nome_categoria p-3 w-25 rounded-3 position-absolute">
    <h3 class=" text-center text-white">{{$categoria_produto->nome}}</h3>
</div>


</header>
<div class="pt-5 pb-4 ps-4">
    <h4>Produtos tipo: <span class="text-danger">{{$categoria_produto->nome}}</span> bem avaliados</h4>
</div>
<section class="d-flex flex-wrap pt-1 pb-5 ps-5">
    @forelse ($produtos_famosos as $produto)
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
            aria-labelledby="produto-modal-{{ $produto->id }}Label" aria-hidden="true"
            data-video-id="{{ $produto->video_id }}" data-produto-id="{{ $produto->id }}">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content modal-produto">
                    <div class="modal-header">
                        <h5 class="modal-title" id="produto-modal-{{ $produto->id }}Label">Produto</h5>
                        <button type="button" id="produto-modal-{{ $produto->id }}Close" class="btn-close"
                            data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="d-flex ps-5 ">
                            <div class="modal-card-produto p-4 rounded-3">
                                <img src="{{ Voyager::image($produto->imagem) }}" width="170" height="160"
                                    class="rounded-3" alt="Imagem do produto"
                                    onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
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
                                    <div class="px-2">
                                    @isset($produto->avaliacao)
                                    <p class="text-avaliacao-modal fw-bold">{{ number_format($produto->avaliacao, 1, '.', '') }}</p>
                                @endisset

                                @empty($produto->avaliacao)

                                    <h5 class="text-avaliacao-empresa">0.0</h5>

                                @endempty
                            </div>
                                    <div>
                                        <p class="text-decoration-underline text-success">
                                            ({{ $produto->avaliacoes->count() }} avaliações de clientes)
                                        </p>
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
                                <script src="https://www.youtube.com/iframe_api"></script>
                                <script src="https://player.vimeo.com/api/player.js"></script>



                                @isset($produto->video_curto)
                                    {{-- Rodar o video do youtube  --}}
                                    @php
                                        $videoUrl = $produto->video_curto;
                                        $videoId = '';
                                        if (!empty($videoUrl)) {
                                            $parsedUrl = parse_url($videoUrl);
                                            if (!empty($parsedUrl['query'])) {
                                                parse_str($parsedUrl['query'], $params);
                                                if (!empty($params['v'])) {
                                                    $videoId = $params['v'];
                                                }
                                            }
                                        }
                                    @endphp
                                    @if (!empty($videoId))
                                        <div class="embed-responsive embed-responsive-16by9">
                                            <iframe id="video-player" width="450" height="315"
                                                class="embed-responsive-item"
                                                src="https://www.youtube.com/embed/{{ $videoId }}?enablejsapi=1"
                                                frameborder="0" allowfullscreen></iframe>
                                        </div>
                                    @endif
                                    {{-- Rodar o video do youtube Fim --}}
                                    <!-- Seção de scripts -->
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
                    <div class="rounded-3 shadow ms-3 me-3 mb-5 bg-body rounded">
                        <div class="d-flex p-2 bd-highlight mb-3 m-3">
                            <div class="d-flex align-items-center">
                                <div class="pt-5 flex-shrink-0">
                                    <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140" height="120" alt="Imagem avatar" class="rounded-circle" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                                    <div class="ps-2 pt-3">
                                        <label for="avaliacao" class="rating-label">
                                            <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{ $avaliacao->avaliacao ?? 0 }}" disabled>
                                        </label>
                                    </div>
                                </div>
                                <div class="ps-3" style="max-width: 200px;">
                                    <p class="text-break" style="font-size: 1.1rem; font-weight: bold; margin-bottom: 0;">{{ ($avaliacao->usuario->name) }}</p>
                                    <p>{{ $avaliacao->updated_at->format('d/m/Y H:i:s') }}</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-start flex-grow-1 p-3 ms-3 mt-3" style="max-height: 120px; overflow-y: auto;">
                                <p class="text-break mb-0" style="font-size: 1.1rem; max-width: 450px;">{{ mb_substr($avaliacao->descricao, 0, 500) }}</p>
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
              <p class="text-center">Nenhum Produto cadastrado para essa categoria.</p>
            </div>
        </div>
        {{-- @endif --}}
    @endforelse
</section>
<div class="pt-5 pb-4 ps-4 header_nome_categoria_mostrar">
    <h4>Produtos: <span class="text-danger">{{$categoria_produto->nome}}</span></h4>
  </div>

  <section class="d-flex flex-wrap pt-2 pb-5 card_produto_section_position">
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
            aria-labelledby="produto-modal-{{ $produto->id }}Label" aria-hidden="true"
            data-video-id="{{ $produto->video_id }}" data-produto-id="{{ $produto->id }}">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content modal-produto">
                    <div class="modal-header">
                        <h5 class="modal-title" id="produto-modal-{{ $produto->id }}Label">Produto</h5>
                        <button type="button" id="produto-modal-{{ $produto->id }}Close" class="btn-close"
                            data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="d-flex ps-5 ">
                            <div class="modal-card-produto p-4 rounded-3">
                                <img src="{{ Voyager::image($produto->imagem) }}" width="170" height="160"
                                    class="rounded-3" alt="Imagem do produto"
                                    onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
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
                                    <div class="px-2">
                                    @isset($produto->avaliacao)
                                    <p class="text-avaliacao-modal fw-bold">{{ number_format($produto->avaliacao, 1, '.', '') }}</p>
                                @endisset

                                @empty($produto->avaliacao)

                                    <h5 class="text-avaliacao-empresa">0.0</h5>

                                @endempty
                            </div>
                                    <div>
                                        <p class="text-decoration-underline text-success">
                                            ({{ $produto->avaliacoes->count() }} avaliações de clientes)
                                        </p>
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
                                <script src="https://www.youtube.com/iframe_api"></script>
                                <script src="https://player.vimeo.com/api/player.js"></script>



                                @isset($produto->video_curto)
                                    {{-- Rodar o video do youtube  --}}
                                    @php
                                        $videoUrl = $produto->video_curto;
                                        $videoId = '';
                                        if (!empty($videoUrl)) {
                                            $parsedUrl = parse_url($videoUrl);
                                            if (!empty($parsedUrl['query'])) {
                                                parse_str($parsedUrl['query'], $params);
                                                if (!empty($params['v'])) {
                                                    $videoId = $params['v'];
                                                }
                                            }
                                        }
                                    @endphp
                                    @if (!empty($videoId))
                                        <div class="embed-responsive embed-responsive-16by9">
                                            <iframe id="video-player" width="450" height="315"
                                                class="embed-responsive-item"
                                                src="https://www.youtube.com/embed/{{ $videoId }}?enablejsapi=1"
                                                frameborder="0" allowfullscreen></iframe>
                                        </div>
                                    @endif
                                    {{-- Rodar o video do youtube Fim --}}
                                    <!-- Seção de scripts -->
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
                    <div class="rounded-3 shadow ms-3 me-3 mb-5 bg-body rounded">
                        <div class="d-flex p-2 bd-highlight mb-3 m-3">
                            <div class="d-flex align-items-center">
                                <div class="pt-5 flex-shrink-0">
                                    <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140" height="120" alt="Imagem avatar" class="rounded-circle" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/user_default.png') }}';">
                                    <div class="ps-2 pt-3">
                                        <label for="avaliacao" class="rating-label">
                                            <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{ $avaliacao->avaliacao ?? 0 }}" disabled>
                                        </label>
                                    </div>
                                </div>
                                <div class="ps-3" style="max-width: 200px;">
                                    <p class="text-break" style="font-size: 1.1rem; font-weight: bold; margin-bottom: 0;">{{ ($avaliacao->usuario->name) }}</p>
                                    <p>{{ $avaliacao->updated_at->format('d/m/Y H:i:s') }}</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-start flex-grow-1 p-3 ms-3 mt-3" style="max-height: 120px; overflow-y: auto;">
                                <p class="text-break mb-0" style="font-size: 1.1rem; max-width: 450px;">{{ mb_substr($avaliacao->descricao, 0, 500) }}</p>
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

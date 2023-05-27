@extends('layouts.app')

@section('conteudo')

    {{-- <header class="pt-5 ps-4">
        <h4>O que voce está Procurando hoje?</h4>
    </header>

    <section class="d-flex flex-wrap pt-2 pb-5 ps-5">
        @forelse ($categoria_produtos as $categoria_produto)
            <a class="marcacao_a_remov text-black" href="{{ route('produto.categoria', ['id' => $categoria_produto->id]) }}">
                <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-2 ">
                    <img src="{{ Voyager::image($categoria_produto->imagem) }}" width="150" height="95" class="rounded-3"
                        alt="Imagem Da categoria Dos Produtos"
                        onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                    <div class="text-center pt-2 pb-4">
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
    </section> --}}
    <section class="py-5">
        <div class="text-center pb-3 ">
            <h4 class="">Na Janela do Produtor, você encontra os melhores produtos do comércio local.</h4>

        </div>
        @include('componentes.carrossel_categoria_produto')
    </section>

    <div class="text-center  py-5 ">
        <h4 class="">Veja mais produtos que podem interessar a você.</h4>

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

            <div class="modal fade" id="produto-modal-{{ $produto->id }}" data-bs-backdrop="static"
                data-bs-keyboard="false" tabindex="-1" aria-labelledby="produto-modal-{{ $produto->id }}Label"
                aria-hidden="true" data-produto-id="{{ $produto->id }}" data-video-id="{{ $produto->video_id }}">
                <div class="modal-dialog modal-xl" role="document">
                    <div class="modal-content modal-produto">
                        <div class="modal-header">
                            <h5 class="modal-title" id="produto-modal-{{ $produto->id }}Label">Produto</h5>
                            <button type="button" id="produto-modal-{{ $produto->id }}Close" class="btn-close"
                                data-bs-dismiss="modal" aria-label="Close"
                                onclick="stopVideo('produto-modal-{{ $produto->id }}')"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row mb-3">
                                <div class="col-sm-4">
                                    <div class="d-flex justify-content-center">
                                        <div class="modal-card-produto p-4 rounded-3 ">
                                            <img src="{{ Voyager::image($produto->imagem) }}" class="rounded-3 img-fluid"
                                                width="190" height="180" alt="Imagem do produto"
                                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <p class="fw-bold fs-3">{{ $produto->nome }}</p>
                                    <div class="d-flex align-items-center">
                                        <label for="avaliacao" class="rating-label me-2">
                                            <input class="rating rating--nojs" id="avaliacao" name="avaliacao"
                                                type="range" max="5" step="0.5"
                                                value="{{ $produto->avaliacao ?? 0 }}" disabled>
                                        </label>
                                        <div class="px-2">
                                            @isset($produto->avaliacao)
                                                <p class="text-avaliacao-modal fw-bold">
                                                    {{ number_format($produto->avaliacao, 1, '.', '') }}</p>
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
                                    <p class="fw-bold fs-6 mb-1">Pedidos {{ $produto->pedidos->count() }}</p>
                                    <p class="fw-bold fs-5">Preço {{ $produto->getPreco() }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            @isset($produto->video_curto)
                                <div class="col-md-6">
                                    <script src="https://www.youtube.com/iframe_api"></script>
                                    <script src="https://player.vimeo.com/api/player.js"></script>
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
                                            <iframe width="450" height="315"
                                                class="video-player pb-5 embed-responsive-item"
                                                src="https://www.youtube.com/embed/{{ $videoId }}?enablejsapi=1"
                                                frameborder="0" allowfullscreen></iframe>
                                        </div>
                                    @endif
                                </div>
                                <div class="col-md-6">
                                @else
                                    <div class="col-md-12 ps-5">
                                    @endisset
                                    <h4>Descrição</h4>
                                    <p style="max-height: 120px; overflow-y: auto;">{{ $produto->descricao }}</p>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <a type="button" href="{{ route('empresa.visualizar', ['id' => $produto->empresa->id]) }}"
                                class="btn btn-primary">Produtor: {{ $produto->empresa->nome }}</a>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Voltar</button>
                            <button type="button" class="btn btn-success" data-id="{{ $produto->id }}"
                                data-imagem="{{ Voyager::image($produto->imagem) }}"
                                data-preco="{{ $produto->preco }}" data-nome="{{ $produto->nome }}"
                                data-cidade="{{ $produto->empresa->cidade->nome }}"
                                onclick="adicionarItemNoCarrinho();">Adicionar ao
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
                                            <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}"
                                                width="140" height="120" alt="Imagem avatar"
                                                class="rounded-circle"
                                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/user_default.png') }}';">
                                            <div class="ps-2 pt-3">
                                                <label for="avaliacao" class="rating-label">
                                                    <input class="rating rating--nojs" id="avaliacao"
                                                        name="avaliacao" type="range" max="5"
                                                        step="0.5" value="{{ $avaliacao->avaliacao ?? 0 }}"
                                                        disabled>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="ps-3" style="max-width: 200px;">
                                            <p class="text-break"
                                                style="font-size: 1.1rem; font-weight: bold; margin-bottom: 0;">
                                                {{ $avaliacao->usuario->name }}</p>
                                            <p>{{ $avaliacao->updated_at->format('d/m/Y H:i:s') }}</p>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-start flex-grow-1 p-3 ms-3 mt-3 overflow-auto"
                                        style="max-height: 120px;">
                                        <p class="text-break mb-0" style="font-size: 1.1rem; max-width: 450px;">
                                            {{ mb_substr($avaliacao->descricao, 0, 500) }}</p>
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
<script>
    function stopVideo(seletor) {
        //obter o iframe com o video
        let iframe = document.getElementById(seletor)
            .querySelector('.video-player');
        //mudar o source do iframe (forçar um reload)
        iframe.src = iframe.src;
    }
</script>
@endsection

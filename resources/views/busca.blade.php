@extends('layouts.app')

@section('conteudo')
    <header class="mt-5 ms-5 mb-5">
        <h4 class="fw-bold">Buscando por <span class="text-danger">
                {{ request()->filtro }}
                @empty(request()->filtro)
                    Todos
                @endempty
            </span> </h4>


    </header>
    <!-- Tabs navs -->
    <ul class="nav nav-tabs mb-3 ms-5 me-5" id="ex1" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active text-success" id="ex1-tab-1" data-mdb-toggle="tab" href="#ex1-tabs-1" role="tab"
                aria-controls="ex1-tabs-1" aria-selected="true">Produtos</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link text-success" id="ex1-tab-2" data-mdb-toggle="tab" href="#ex1-tabs-2" role="tab"
                aria-controls="ex1-tabs-2" aria-selected="false">Produtores</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link text-success" id="ex1-tab-3" data-mdb-toggle="tab" href="#ex1-tabs-3" role="tab"
                aria-controls="ex1-tabs-3" aria-selected="false">Categorias</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link text-success" id="ex1-tab-4" data-mdb-toggle="tab" href="#ex1-tabs-4" role="tab"
                aria-controls="ex1-tabs-4" aria-selected="false">Cidades</a>
        </li>
    </ul>
    <!-- Tabs navs -->
    <div class="tab-content" id="ex1-content">
        <div class="tab-pane fade show active" id="ex1-tabs-1" role="tabpanel" aria-labelledby="ex1-tab-1">
            {{-- <header class="pt-5">
                <h1 class="fw-bold">Buscando por <span class="text-danger">
                        {{ request()->filtro }}
                        @empty(request()->filtro)
                            Todos
                        @endempty
                    </span></h1>
            </header> --}}
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
        </div>
        <div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel" aria-labelledby="ex1-tab-2">
            {{-- <header class="pt-5">
                <h1 class="fw-bold">Buscando por <span class="text-danger">
                        {{ request()->filtro }}
                        @empty(request()->filtro)
                            Todos
                        @endempty
                    </span></h1>
            </header> --}}
            <section class=" d-flex flex-wrap py-5">
                @forelse ($empresas as $empresa)
                    <div class="card_empresa d-flex align-items-center  m-3 p-4">
                        <div>
                            <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130"
                                class="rounded-circle"
                                alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                        </div>
                        <div class="ps-4">
                            <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
                            <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
                            {{-- <input class="rating py-2" type="range" value="{{$empresa->avaliacao}}" disabled> --}}
                            <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range"
                                    max="5" step="0.5" value="{{ $empresa->avaliacao ?? 0 }}" disabled>
                            </label>
                            <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                                href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                                    class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                            </a>
                        </div>
                    </div>
                @empty
                    <p class="alert alert-success">Nenhuma empresa cadastrada</p>
                @endforelse
            </section>
        </div>
        <div class="tab-pane fade" id="ex1-tabs-3" role="tabpanel" aria-labelledby="ex1-tab-3">

            <section class="d-flex flex-wrap pt-2 pb-5 card_produto_section_position">
                @forelse ($categorias as $categoria)
                    @foreach ($categoria?->produtos as $produto)
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
                    @endforeach
                    @empty

                    <div class="ps-4">
                        <div class="alert alert-success " role="alert">
                        <p class="alert alert-success">Não encontrado nenhum Produto com o nome: {{ request()->filtro }}</p>
                    </div>
                </div>
                    @endforelse



                </section>
            </div>
            <div class="tab-pane fade" id="ex1-tabs-4" role="tabpanel" aria-labelledby="ex1-tab-4">
                <header>
                    <div class="text-center pb-4">
                        <h4>Em busca de produtores da sua região</h4>
                    </div>
                </header>
                @forelse ($cidades as $cidade)
                    <div class=" d-flex flex-wrap pt-2 pb-5 card_empresa_section_position">
                        @foreach ($cidade
                ?->empresas()->where('ativo', true)->get() as $empresa)
                            <div class="card_empresa d-flex align-items-center  m-1  p-4">
                                <div>
                                    <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130"
                                        class="rounded-circle"
                                        alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                                </div>
                                <div class="ps-4">
                                    <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
                                    <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
                                    {{-- <input class="rating py-2" type="range" value="{{$empresa->avaliacao}}" disabled> --}}
                                    <label for="avaliacao" class="rating-label">
                                        <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range"
                                            max="5" step="0.5" value="{{ $empresa->avaliacao ?? 0 }}" disabled>
                                    </label>
                                    <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                                        href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                                            class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>

                @empty
                <div class="ps-4 d-flex justify-content-center">
                    <div class="alert alert-success w-50 " role="alert">
                        <p class="text-center">Nenhum Produtor cadastrado para cidade:{{ request()->filtro }}.</p>
                    </div>
                </div>
                @endforelse

                {{-- Ver produtos pela cidade justo que a cidade esta na empresa que o produto pertence  --}}
                <header>
                    <div class="text-center pb-4">
                        <h4>Em busca de produtos da sua região</h4>
                    </div>
                </header>
                @forelse ($cidades as $cidade)
                    <section class="d-flex flex-wrap pt-2 pb-5 card_produto_section_position">
                        @foreach ($cidade
                ?->empresas()->where('ativo', true)->get() as $empresa)
                            @foreach ($empresa->produtos as $produto)
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
                            @endforeach
                        @endforeach
                    </section>

                    @empty
                        <div class="ps-4 d-flex justify-content-center">
                            <div class="alert alert-success w-50 " role="alert">
                                <p class="text-center">Nenhum Produto cadastrado para cidade:{{ request()->filtro }}.</p>
                            </div>
                        </div>
                    @endforelse

                </div>

            </div>
            <!-- Tabs content -->

            <script type="text/javascript" src="{{ asset('/vendor/mdb5/core.min.js') }}"></script>

            <script>
                function stopVideo(seletor) {
                    //obter o iframe com o video
                    let iframe = document.getElementById(seletor)
                        .querySelector('.video-player');
                    //mudar o source do iframe (forçar um reload)
                    iframe.src = iframe.src;
                }
            </script>

            <script type="text/javascript" src="{{ asset('/vendor/mdb5/search.min.js') }}"></script>
            <script src="{{ asset('/vendor/mdb5/main.min.js') }}"></script>


            <script>
                let isSidenavHidden = false;
                isSidenavHidden = false;
                const sidenav = document.getElementById('mdb-sidenav');
                const instance = mdb.Sidenav.getInstance(sidenav);


                let innerWidth = null;

                const setMode = () => {
                    if (window.innerWidth === innerWidth) return;

                    innerWidth = window.innerWidth;
                    const isFrontPage = 0;

                    if (innerWidth <= 1440 || isFrontPage || isSidenavHidden) {
                        instance.changeMode('over');
                        instance.hide();
                        return;
                    }
                    instance.changeMode('side');
                    instance.show();
                };

                if (sidenav) {
                    window.addEventListener('resize', setMode);
                    setMode();
                }



                function mdbScrollSpyTo(e) {
                    e.preventDefault();
                    const hash = e.target.getAttribute('href');
                    const target = document.getElementById(hash.substring(1));

                    window.scroll({
                        top: target.offsetTop - 100,
                        behavior: 'smooth'
                    });

                    if (history.pushState) {
                        history.pushState(null, null, hash);
                    } else {
                        location.hash = hash;
                    }
                }

                document.querySelectorAll('#scrollspy .menu-sidebar a').forEach((link) => {
                    link.addEventListener('click', mdbScrollSpyTo, false);
                });


                if (window.location.hash) {
                    const target = document.getElementById(window.location.hash.substring(1));

                    setTimeout(function() {
                        window.scroll({
                            top: 0
                        });

                        setTimeout(() => {
                            window.scroll({
                                top: target.offsetTop - 100,
                                behavior: 'smooth'
                            });
                        }, 1000);
                    }, 1);
                }




                window.addEventListener("load", (event) => {
                    const locationHash = window.location.hash;
                    const scrollTop = () => {
                        window.scrollTo({
                            top: 0,
                            behavior: 'smooth'
                        });
                    }

                    if (locationHash === "#docsTabsAPI") {
                        const apiTab = document.querySelector('#docs-nav-pills a[href="#docsTabsAPI"]');

                        if (apiTab) {
                            const apiTabsInstance = new mdb.Tab(apiTab);

                            apiTabsInstance.show();
                            scrollTop();
                        }
                    } else if (locationHash === "#docsTabsOverview") {
                        scrollTop();
                    } else if (["#topTemplates", "#newTemplates", "#trendingTemplates"].indexOf(locationHash) !== -1) {
                        const templateTab = document.querySelector('#templates-nav-pills a[href="' + locationHash + '"]');

                        if (templateTab) {
                            const templateTabsInstance = new mdb.Tab(templateTab);

                            templateTabsInstance.show();
                            scrollTop();
                        }
                    }

                    const navPills = document.querySelectorAll('#docs-nav-pills a[data-mdb-toggle="tab"]');

                    if (navPills.length) {
                        navPills.forEach((el) => {
                            el.addEventListener('click', (e) => {
                                window.location.hash = e.target.hash;

                                scrollTop();
                            });
                        });
                    }

                    const templatePills = document.querySelectorAll('#templates-nav-pills a[data-mdb-toggle="pill"]');

                    if (templatePills.length) {
                        templatePills.forEach((el) => {
                            el.addEventListener('click', (e) => {
                                window.location.hash = e.target.hash;

                                scrollTop();
                            });
                        });
                    }
                });
            </script>
        @endsection

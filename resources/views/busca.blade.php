@extends('layouts.app')

@section('conteudo')
<header class="py-4">
    <h4 class="fw-bold">Buscando por <span class="text-danger">
            {{ request()->filtro }}
            @empty(request()->filtro)
                Todos
            @endempty
        </span></h4>
</header>
    <!-- Tabs navs -->
    <ul class="nav nav-tabs mb-3" id="ex1" role="tablist">
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

            <section class="d-flex flex-wrap py-4 ps-5">
                @forelse ($produtos as $produto)
                <a {{-- botao Modal --}} data-bs-toggle="modal" data-bs-target="#produto-modal-{{ $produto->id }}"
                    {{-- Final botao Modal --}}>
                    <div class="card-link m-2 p-4">

                        <img src="{{ Voyager::image($produto->imagem) }}" width="220" height="170" class="rounded-2"
                            alt="Imagem do produto"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">

                        <div class="p-1 text-center">
                            <h5 class="pt-3">{{ $produto->nome }}</h5>
                            <p class="">{{ $produto->empresa->nome }}</p>
                            {{-- <div class="ps-5">
                            <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$produto->avaliacao}}" disabled>
                            </label>
                        </div> --}}
                            <p class="pt-1">Preço {{ $produto->getPreco() }}
                                @isset($produto->avaliacao)
                                <span class="text-warning ps-1 "><i class="fa-sharp fa-solid fa-star"></i> {{$produto->avaliacao}}</span>
                                @endisset
                                @empty($produto->avaliacao)
                                <span class="text-warning ps-1"><i class="fa-sharp fa-solid fa-star"></i> 0</span>
                                  @endempty
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
                                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                                        </div>

                                        <div class="ps-4">

                                            <p class=" fw-bold fs-3">{{ $produto->nome }}</p >
                                                <label for="avaliacao" class="rating-label">
                                                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$produto->avaliacao}}" disabled>
                                                </label>
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
                                        <h4>Descrição</h4>
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

                                <header class="ps-3 py-4"><p class="fw-bold fs-4">Avaliações</p></header>
                                @forelse ($produto->avaliacoes as $avaliacao)
                                <div class=" rounded-3 shadow ms-3 me-3  mb-5 bg-body rounde">
                                    <div class="d-flex p-2 bd-highlight mb-3  m-3 ">
                                        <div class="d-flex align-items-center">
                                            <div class="pt-5 flex-shrink-0 ">
                                            <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140" height="120"
                                                 alt="Imagem avatar" class="rounded-circle"
                                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                                                 <div class="ps-2 pt-3">
                                                    <label for="avaliacao" class="rating-label">
                                                        <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$avaliacao->avaliacao}}" disabled>
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
                <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130" class="rounded-circle"
                    alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                </div>
                <div class="ps-4">
                    <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
                    <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
                    {{-- <input class="rating py-2" type="range" value="{{$empresa->avaliacao}}" disabled> --}}
                    <label for="avaliacao" class="rating-label">
                        <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$empresa->avaliacao}}" disabled>
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
            {{-- <header class="pt-5">
                <h1 class="fw-bold">Buscando por <span class="text-danger">
                        {{ request()->filtro }}
                        @empty(request()->filtro)
                            Todos
                        @endempty
                    </span></h1>
            </header> --}}
            <section class="d-flex flex-wrap py-4 ps-5">
                @forelse ($categorias as $categoria )


                @foreach ($categoria?->produtos as $produto)
                <a {{-- botao Modal --}} data-bs-toggle="modal" data-bs-target="#produto-modal-{{ $produto->id }}"
                    {{-- Final botao Modal --}}>
                    <div class="card-link m-2 p-4">

                        <img src="{{ Voyager::image($produto->imagem) }}" width="220" height="170" class="rounded-2"
                            alt="Imagem do produto"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">

                        <div class="p-1 text-center">
                            <h5 class="pt-3">{{ $produto->nome }}</h5>
                            <p class="">{{ $produto->empresa->nome }}</p>
                            {{-- <div class="ps-5">
                            <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$produto->avaliacao}}" disabled>
                            </label>
                        </div> --}}
                            <p class="pt-1">Preço {{ $produto->getPreco() }}
                                @isset($produto->avaliacao)
                                <span class="text-warning ps-1 "><i class="fa-sharp fa-solid fa-star"></i> {{$produto->avaliacao}}</span>
                                @endisset
                                @empty($produto->avaliacao)
                                <span class="text-warning ps-1"><i class="fa-sharp fa-solid fa-star"></i> 0</span>
                                  @endempty
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
                                        onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                                </div>

                                <div class="ps-4">

                                    <p class=" fw-bold fs-3">{{ $produto->nome }}</p >
                                        <label for="avaliacao" class="rating-label">
                                            <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$produto->avaliacao}}" disabled>
                                        </label>
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
                                <h4>Descrição</h4>
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

                        <header class="ps-3 py-4"><p class="fw-bold fs-4">Avaliações</p></header>
                        @forelse ($produto->avaliacoes as $avaliacao)
                        <div class="card_avaliacao_produto rounded-3 shadow  mb-5 bg-body rounde">
                            <div class="d-flex bd-highlight mb-3  m-3">
                                <div class="d-flex align-items-center">
                                    <div class="py-5 flex-shrink-0">
                                    <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="160" height="140"
                                         alt="Imagem do produto" class="rounded-circle"
                                        onerror="this.onerror=null;this.src='{{ asset('assets/images/images_usuario/foto_sem_icone.jpg') }}';">
                                        <div class="ps-2 pt-3">
                                            <label for="avaliacao" class="rating-label">
                                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$avaliacao->avaliacao}}" disabled>
                                            </label>
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
                @endforeach
                @empty

                    <p class="alert alert-success">Não encontrado nenhum Produto com o nome: {{ request()->filtro }}</p>
                @endforelse



            </section>
        </div>

    </div>
    <!-- Tabs content -->

    <script type="text/javascript" src="{{ asset('/vendor/mdb5/core.min.js') }}"></script>



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

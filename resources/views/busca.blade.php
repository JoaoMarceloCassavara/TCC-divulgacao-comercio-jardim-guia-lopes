@extends('layouts.app')

@section('conteudo')
    <!-- Tabs navs -->
    <ul class="nav nav-tabs mb-3" id="ex1" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active" id="ex1-tab-1" data-mdb-toggle="tab" href="#ex1-tabs-1" role="tab"
                aria-controls="ex1-tabs-1" aria-selected="true">Produtos</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" id="ex1-tab-2" data-mdb-toggle="tab" href="#ex1-tabs-2" role="tab"
                aria-controls="ex1-tabs-2" aria-selected="false">Empresas</a>
        </li>
    </ul>
    <!-- Tabs navs -->
    <div class="tab-content" id="ex1-content">
        <div class="tab-pane fade show active" id="ex1-tabs-1" role="tabpanel" aria-labelledby="ex1-tab-1">
            <header class="pt-5">
                <h1 class="fw-bold">Buscando por <span class="text-danger">
                        {{ request()->filtro }}
                        @empty(request()->filtro)
                            Todos
                        @endempty
                    </span></h1>
            </header>

            <section class="d-flex flex-wrap py-5">

                @forelse ($produtos as $produto)
                    <a {{-- botao Modal --}} data-bs-toggle="modal" data-bs-target="#produto-modal-{{ $produto->id }}"
                        {{-- Final botao Modal --}}>
                        <div class="card-link m-2 p-4">

                            <img src="{{ Voyager::image($produto->imagem) }}" width="210" height="185"
                                class="imagem-produto" alt="Imagem do produto">

                            <div class="card-componente">
                                <h5 class="card-title">{{ $produto->nome }}</h5>
                                <p class="card-text">{{ $produto->descricao }}</p>
                                <p class="card-text">Preço${{ $produto->preco }} </p>
                            </div>
                        </div>
                    </a>

                    {{-- Inicio modal --}}
                    <!-- Modal -->
                    <div class="modal fade" id="produto-modal-{{ $produto->id }}" tabindex="-1"
                        aria-labelledby="produto-modal-{{ $produto->id }}Label" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modal-margin">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="produto-modal-{{ $produto->id }}Label">Produto</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <section class=" d-flex flex-wrap index_padding">
                                        <div class="col-md-4">
                                            <div class="card-modal shadow p-4 m-2 ">
                                                <img src="{{ Voyager::image($produto->imagem) }}" class="modal-imagem"
                                                    class="imagem-produto  alt="Imagem do produto">
                                            </div>
                                        </div>

                                        <div class="col-md-8">
                                            <div class="card-text-modal ">
                                                <h5 class="card-title modal-font-produto">{{ $produto->nome }}</h5>


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

                                                <p class="paragrafo-pedido">65 pedidos</p>
                                                <div class="input-ajuste">

                                                    <h4>Alguma observação?</h4>
                                                    <div class="input-group input-group-lg input-campo-modal ">

                                                        <input type="text" class="form-control"placeholder="Ajuste"
                                                            aria-label="Sizing example input"
                                                            aria-describedby="inputGroup-sizing-lg">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>


                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Voltar</button>
                                    <button type="button" class="btn btn-dark " data-id="{{ $produto->id }}"
                                        data-imagem="{{ Voyager::image($produto->imagem) }}"
                                        data-preco="{{ $produto->preco }}" data-nome="{{ $produto->nome }}"
                                        onclick="adicionarItemNoCarrinho();">Adicionar ao carrinho</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- Final MOdal --}}

                @empty

                    <p class="alert alert-success">Não encontrado nenhum Produto com o nome: {{ request()->filtro }}</p>
                @endforelse
            </section>
        </div>
        <div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel" aria-labelledby="ex1-tab-2">
            <header class="pt-5">
                <h1 class="fw-bold">Buscando por <span class="text-danger">
                        {{ request()->filtro }}
                        @empty(request()->filtro)
                            Todos
                        @endempty
                    </span></h1>
            </header>
            <section class=" d-flex flex-wrap py-5">
                @forelse ($empresas as $empresa)
                    <div class="card_empresa d-flex p-4 m-2 ">
                        <img src="{{ Voyager::image($empresa->logo) }}"height="160" width="160"
                            class="rounded-circle"
                            alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                        <div class="col-md-8 ">
                            <h5 class="text-white text-center nome_empresa py-2">{{ $empresa->nome }}</h5>
                            <h6 class=" text-white ps-5">{{ $empresa?->categoria?->nome }}</h6>
                            <p class=" text-white ps-5">11km</p>
                            <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov m-3"
                                href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                                    class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                            </a>
                        </div>
                    </div>
                @empty
                    <p class="alert alert-success">Não encontrado nenhuma Empresa com esse nome: {{ request()->filtro }}
                    </p>
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

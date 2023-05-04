@if (count($categoria_empresas) > 0)
    <div id="carousel-categorias-empresas" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            @for ($posicao = 0; $posicao < count($categoria_empresas); $posicao = $posicao + 4)
                @if ($posicao == 0)
                    <div class="carousel-item active d-flex justify-content-center">
                    @else
                        <div class="carousel-item d-flex justify-content-center">
                @endif
                <a class=" marcacao_a_remov text-black"
                    href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao]->id]) }}">
                    <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                        <img src="{{ Voyager::image($categoria_empresas[$posicao]->imagem) }}" width="150"
                            height="100" class="rounded-3" alt="Imagem Da categoria Dos Produtos"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                        <div class="text-center pt-2 pb-4">
                            <p class="fs-5 card-title">{{ $categoria_empresas[$posicao]->nome }}</p>
                        </div>
                    </div>
                </a>
                @if ($posicao + 1 < count($categoria_empresas))
                    <a class=" marcacao_a_remov text-black "
                        href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao + 1]->id]) }}">
                        <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                            <img src="{{ Voyager::image($categoria_empresas[$posicao + 1]->imagem) }}" width="150"
                                height="100" class="rounded-3" alt="Imagem Da categoria Dos Produtos"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                            <div class="text-center pt-2 pb-4">
                                <p class="fs-5 card-title">{{ $categoria_empresas[$posicao + 1]->nome }}</p>
                            </div>
                        </div>
                    </a>
                @endif
                @if ($posicao + 2 < count($categoria_empresas))
                    <a class=" marcacao_a_remov text-black "
                        href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao + 2]->id]) }}">

                        <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                            <img src="{{ Voyager::image($categoria_empresas[$posicao + 2]->imagem) }}" width="150"
                                height="100" class="rounded-3" alt="Imagem Da categoria Dos Produtos"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                            <div class="text-center pt-2 pb-4">
                                <p class="fs-5 card-title">{{ $categoria_empresas[$posicao + 2]->nome }}</p>
                            </div>
                        </div>
                    </a>
                @endif
                @if ($posicao + 3 < count($categoria_empresas))
                    <a class=" marcacao_a_remov text-black"
                        href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao + 3]->id]) }}">

                        <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                            <img src="{{ Voyager::image($categoria_empresas[$posicao + 3]->imagem) }}" width="150"
                                height="100" class="rounded-3" alt="Imagem Da categoria Dos Produtos"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                            <div class="text-center pt-2 pb-4">
                                <p class="fs-5 card-title ">{{ $categoria_empresas[$posicao + 3]->nome }}</p>
                            </div>
                        </div>
                    </a>
                @endif
        </div>
@endfor
</div>
<button class="carousel-control-prev" type="button" data-bs-target="#carousel-categorias-empresas"
    data-bs-slide="prev">
    <span class="carousel-control-prev-icon btn btn-dark " aria-hidden="true"></span>
    <span class="visually-hidden">Anterior</span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#carousel-categorias-empresas"
    data-bs-slide="next">
    <span class="carousel-control-next-icon btn btn-dark " aria-hidden="true"></span>
    <span class="visually-hidden">Proximo</span>
</button>
</div>
@endif

<div id="carousel-categorias-empresas" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        @for ($posicao = 0; $posicao < count($categoria_empresas); $posicao = $posicao + 5)
            @if ($posicao == 0)
                <div class="carousel-item active d-flex justify-content-center">
                @else
                    <div class="carousel-item d-flex justify-content-center">
            @endif
            <a class="m-4 marcacao_a_remov "
                href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao]->id]) }}">

                <div class="card-categoria-empresa ">

                    <img src="{{ Voyager::image($categoria_empresas[$posicao]->imagem) }}"
                        class=" imagem-categoria-empresa" alt="Imagem da categoria">

                    <div class="card-body text-center">
                        <h5 class="card-title text-black">{{ $categoria_empresas[$posicao]->nome }}</h5>

                    </div>
                </div>
            </a>
            @if ($posicao + 1 < count($categoria_empresas))
                <a class="m-4 marcacao_a_remov "
                    href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao + 1]->id]) }}">

                    <div class="card-categoria-empresa ">

                        <img src="{{ Voyager::image($categoria_empresas[$posicao + 1]->imagem) }}"
                            class=" imagem-categoria-empresa" alt="Imagem da categoria">

                        <div class="card-body text-center">
                            <h5 class="card-title text-black">{{ $categoria_empresas[$posicao + 1]->nome }}</h5>

                        </div>
                    </div>
                </a>
            @endif
            @if ($posicao + 2 < count($categoria_empresas))
                <a class="m-4 marcacao_a_remov "
                    href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao + 2]->id]) }}">

                    <div class="card-categoria-empresa ">

                        <img src="{{ Voyager::image($categoria_empresas[$posicao + 2]->imagem) }}"
                            class=" imagem-categoria-empresa" alt="Imagem da categoria">

                        <div class="card-body text-center">
                            <h5 class="card-title text-black">{{ $categoria_empresas[$posicao + 2]->nome }}</h5>

                        </div>
                    </div>
                </a>
            @endif
            @if ($posicao + 3 < count($categoria_empresas))
                <a class="m-4 marcacao_a_remov "
                    href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao + 3]->id]) }}">

                    <div class="card-categoria-empresa ">

                        <img src="{{ Voyager::image($categoria_empresas[$posicao + 3]->imagem) }}"
                            class=" imagem-categoria-empresa" alt="Imagem da categoria">

                        <div class="card-body text-center">
                            <h5 class="card-title text-black">{{ $categoria_empresas[$posicao + 3]->nome }}</h5>

                        </div>
                    </div>
                </a>
            @endif
            @if ($posicao + 4 < count($categoria_empresas))
                <a class="m-4 marcacao_a_remov "
                    href="{{ route('empresa.categoria', ['id' => $categoria_empresas[$posicao + 4]->id]) }}">

                    <div class="card-categoria-empresa ">

                        <img src="{{ Voyager::image($categoria_empresas[$posicao + 4]->imagem) }}"
                            class=" imagem-categoria-empresa" alt="Imagem da categoria">

                        <div class="card-body text-center">
                            <h5 class="card-title text-black">{{ $categoria_empresas[$posicao + 4]->nome }}</h5>

                        </div>
                    </div>
                </a>
            @endif

    </div>
    @endfor
</div>
<button class="carousel-control-prev" type="button" data-bs-target="#carousel-categorias-empresas"
    data-bs-slide="prev">
    <span class="carousel-control-prev-icon btn btn-dark rounded-circle" aria-hidden="true"></span>
    <span class="visually-hidden">Anterior</span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#carousel-categorias-empresas"
    data-bs-slide="next">
    <span class="carousel-control-next-icon btn btn-dark rounded-circle" aria-hidden="true"></span>
    <span class="visually-hidden">Proximo</span>
</button>
</div>

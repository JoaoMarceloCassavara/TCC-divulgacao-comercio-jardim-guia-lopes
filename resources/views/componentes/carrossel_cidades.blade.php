<div id="carrossel_cidades" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
    <div class="carousel-inner">
        @for ($posicao = 0; $posicao < count($cidades); $posicao = $posicao + 4)
            @if ($posicao == 0)
                <div class="carousel-item active d-flex justify-content-center">
                @else
                    <div class="carousel-item d-flex justify-content-center">
            @endif

            {{-- Card Cidade --}}


            <a class="marcacao_a_remov text-black" href="{{ route('cidade_produto', ['id' => $cidades[$posicao]->id]) }}">
                <div class="m-3 card_cidade_mostrar pt-5  d-inline-block  rounded-3">
                    <div class="text-center d-block ">
                        <img src="{{ Voyager::image($cidades[$posicao]->imagem) }}" width="120" height="100"
                            class="rounded-3" alt="Imagem Da cidade"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                    </div>
                    <div class="text-center w-100 ps-3  pt-2 ">
                        <p class="fs-5 text-break ">{{ $cidades[$posicao]->nome }}</p>
                    </div>

                </div>
            </a>



            {{-- Card Cidade fim --}}

            {{-- Card Cidade 2 --}}
            @if ($posicao + 1 < count($cidades))
                <a class="marcacao_a_remov text-black"
                    href="{{ route('cidade_produto', ['id' => $cidades[$posicao + 1]->id]) }}">
                    <div class="m-3 card_cidade_mostrar pt-5  d-inline-block  rounded-3">
                        <div class="text-center d-block ">
                            <img src="{{ Voyager::image($cidades[$posicao + 1]->imagem) }}" width="120"
                                height="100" class="rounded-3" alt="Imagem Da cidade"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                        </div>
                        <div class="text-center w-100 ps-3  pt-2 ">
                            <p class="fs-5 text-break ">{{ $cidades[$posicao + 1]->nome }}</p>
                        </div>

                    </div>
                </a>
            @endif
            {{-- Card Cidade 2 fim --}}

            {{-- Card Cidade 3 --}}
            @if ($posicao + 2 < count($cidades))
                <a class="marcacao_a_remov text-black"
                    href="{{ route('cidade_produto', ['id' => $cidades[$posicao + 2]->id]) }}">
                    <div class="m-3 card_cidade_mostrar pt-5  d-inline-block  rounded-3">
                        <div class="text-center d-block ">
                            <img src="{{ Voyager::image($cidades[$posicao + 2]->imagem) }}" width="120"
                                height="100" class="rounded-3" alt="Imagem Da cidade"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                        </div>
                        <div class="text-center w-100 ps-3  pt-2 ">
                            <p class="fs-5 text-break ">{{ $cidades[$posicao + 2]->nome }}</p>
                        </div>

                    </div>
                </a>
            @endif
            {{-- Card Cidade 3 fim --}}

            {{-- Card Cidade 4 --}}
            @if ($posicao + 3 < count($cidades))
                <a class="marcacao_a_remov text-black"
                    href="{{ route('cidade_produto', ['id' => $cidades[$posicao + 3]->id]) }}">
                    <div class="m-3 card_cidade_mostrar pt-5  d-inline-block  rounded-3">
                        <div class="text-center d-block ">
                            <img src="{{ Voyager::image($cidades[$posicao + 3]->imagem) }}" width="120"
                                height="100" class="rounded-3" alt="Imagem Da cidade"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                        </div>
                        <div class="text-center w-100 ps-3  pt-2 ">
                            <p class="fs-5 text-break ">{{ $cidades[$posicao + 3]->nome }}</p>
                        </div>

                    </div>
                </a>
            @endif
            {{-- Card Cidade 4 fim --}}

    </div>
    @endfor
</div>
<button class="carousel-control-prev " type="button" data-bs-target="#carrossel_cidades" data-bs-slide="prev">
    <span class="carousel-control-prev-icon  btn btn-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Anterior</span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#carrossel_cidades" data-bs-slide="next">
    <span class="carousel-control-next-icon  btn btn-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Proximo</span>
</button>
</div>

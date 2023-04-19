@if(count($categoria_produtos) > 0)
<div id="carrossel_categoria_produto" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
    <div class="carousel-inner">
        @for ($posicao = 0; $posicao < count($categoria_produtos); $posicao = $posicao + 4)
            @if ($posicao == 0)
                <div class="carousel-item active d-flex justify-content-center">
                @else
                    <div class="carousel-item d-flex justify-content-center">
            @endif

            {{-- Card categoria Produto --}}


            <a class="marcacao_a_remov text-black" href="{{ route('produto.categoria', ['id' => $categoria_produtos[$posicao]->id]) }}">
                <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                    <div class="text-center d-block ">
                        <img src="{{ Voyager::image($categoria_produtos[$posicao]->imagem) }}" width="150" height="100" class="rounded-3"
                            alt="Imagem Da cidade"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                    </div>
                    <div class="text-center pt-2 pb-4">
                        <p class="fs-5 text-break ">{{ $categoria_produtos[$posicao]->nome }}</p>
                    </div>

                </div>
            </a>



            {{-- Card categoria Produto fim --}}

            {{-- Card categoria Produto 2 --}}
            @if ($posicao + 1 < count($categoria_produtos))


            <a class="marcacao_a_remov text-black" href="{{ route('produto.categoria', ['id' => $categoria_produtos[$posicao +1]->id]) }}">
                <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                    <div class="text-center d-block ">
                        <img src="{{ Voyager::image($categoria_produtos[$posicao +1]->imagem) }}" width="150" height="100" class="rounded-3"
                            alt="Imagem Da cidade"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                    </div>
                    <div class="text-center pt-2 pb-4">
                        <p class="fs-5 text-break ">{{ $categoria_produtos[$posicao +1]->nome }}</p>
                    </div>

                </div>
            </a>

        @endif
        {{-- Card categoria Produto 2 fim --}}

              {{-- Card categoria Produto 3 --}}
              @if ($posicao + 2 < count($categoria_produtos))


              <a class="marcacao_a_remov text-black" href="{{ route('produto.categoria', ['id' => $categoria_produtos[$posicao +2]->id]) }}">
                <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                    <div class="text-center d-block ">
                        <img src="{{ Voyager::image($categoria_produtos[$posicao +2]->imagem) }}" width="150" height="100" class="rounded-3"
                            alt="Imagem Da cidade"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                    </div>
                    <div class="text-center pt-2 pb-4">
                        <p class="fs-5 text-break ">{{ $categoria_produtos[$posicao +2]->nome }}</p>
                    </div>

                </div>
            </a>

      @endif
      {{-- Card categoria Produto 3 fim --}}

             {{-- Card categoria Produto 4 --}}
             @if ($posicao + 3 < count($categoria_produtos))


             <a class="marcacao_a_remov text-black" href="{{ route('produto.categoria', ['id' => $categoria_produtos[$posicao +3]->id]) }}">
                <div class="card_categoria_produto rounded-3 ps-4 pt-4 pe-4 m-3 ">
                    <div class="text-center d-block ">
                        <img src="{{ Voyager::image($categoria_produtos[$posicao +3]->imagem) }}" width="150" height="100" class="rounded-3"
                            alt="Imagem Da cidade"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                    </div>
                    <div class="text-center pt-2 pb-4">
                        <p class="fs-5 text-break ">{{ $categoria_produtos[$posicao +3]->nome }}</p>
                    </div>

                </div>
            </a>

     @endif
     {{-- Card categoria Produto 4 fim --}}

    </div>
    @endfor
</div>
<button class="carousel-control-prev " type="button" data-bs-target="#carrossel_categoria_produto"
    data-bs-slide="prev">
    <span class="carousel-control-prev-icon  btn btn-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Anterior</span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#carrossel_categoria_produto"
    data-bs-slide="next">
    <span class="carousel-control-next-icon  btn btn-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Proximo</span>
</button>
</div>
@endif

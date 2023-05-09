@if(count($empresas_destaques) > 0)

            <div id="carousel-empresas-destaques" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
                <div class="carousel-inner">
                    @for ($posicao = 0; $posicao < count($empresas_destaques); $posicao = $posicao + 2)
                    @if ($posicao == 0)
                    <div class="carousel-item active">
                @else
                    <div class="carousel-item">
                @endif
                <div class="card-wrapper d-flex flex-wrap justify-content-center ">

                         {{-- card empresa --}}

                         <div class="card_empresa_destaque d-flex align-items-center p-4 my-1">
                            <div>
                              <img src="{{ Voyager::image($empresas_destaques[$posicao]?->empresa?->logo) }}"height="130" width="130" class="rounded-circle" alt="Logo Empresa" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                            </div>
                            <div class="ps-4">
                              <p class="text-white  fs-5 pt-4">{{ $empresas_destaques[$posicao]?->empresa?->nome }}</p>
                              <h6 class=" text-white">{{ $empresas_destaques[$posicao]->empresa?->categoria?->nome }}</h6>
                              <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{ $empresas_destaques[$posicao]->empresa->avaliacao ?? 0 }}" disabled>
                              </label>
                              <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov" href="{{ route('empresa.visualizar', ['id' => $empresas_destaques[$posicao]->empresa->id]) }}}"><i class="fa-sharp fa-solid fa-shop"></i> Confira os produtos</a>
                            </div>
                          </div>

                          @if ($posicao + 1 < count($empresas_destaques))
                          <div class="card_empresa_destaque d-flex align-items-center p-4 my-1">
                            <div>
                              <img src="{{ Voyager::image($empresas_destaques[$posicao+1]?->empresa?->logo) }}"height="130" width="130" class="rounded-circle" alt="Logo Empresa" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                            </div>
                            <div class="ps-4">
                              <p class="text-white  fs-5 pt-4">{{ $empresas_destaques[$posicao+1]?->empresa?->nome }}</p>
                              <h6 class=" text-white">{{ $empresas_destaques[$posicao+1]->empresa?->categoria?->nome }}</h6>
                              <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{ $empresas_destaques[$posicao+1]->empresa->avaliacao ?? 0 }}" disabled>
                              </label>
                              <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov" href="{{ route('empresa.visualizar', ['id' => $empresas_destaques[$posicao+1]->empresa->id]) }}}"><i class="fa-sharp fa-solid fa-shop"></i> Confira os produtos</a>
                            </div>
                          </div>

                        {{-- card empresa fim --}}

                        @endif
                    </div>

                    </div>
                @endfor
            </div>
            <button class="carousel-control-prev " type="button" data-bs-target="#carousel-empresas-destaques"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon  btn btn-dark" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carousel-empresas-destaques"
                data-bs-slide="next">
                <span class="carousel-control-next-icon  btn btn-dark" aria-hidden="true"></span>
                <span class="visually-hidden">Proximo</span>
            </button>
        </div>

@endif

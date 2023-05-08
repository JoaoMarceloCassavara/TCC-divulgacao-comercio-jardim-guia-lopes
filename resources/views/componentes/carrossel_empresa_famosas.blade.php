@if(count($empresas_famosas) > 0)

            <div id="carrrossel" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
                <div class="carousel-inner">
                    @for ($posicao = 0; $posicao < count($empresas_famosas); $posicao = $posicao + 1)
                        @if ($posicao == 0)
                            <div class="carousel-item active d-flex justify-content-center">
                            @else
                                <div class="carousel-item d-flex justify-content-center">
                        @endif

                         {{-- card empresa --}}

                         <div class="card_empresa_destaque d-flex align-items-center p-4">
                            <div>
                                <img src="{{ Voyager::image($empresas_famosas[$posicao]?->logo) }}"height="130"
                                    width="130" class="rounded-circle"
                                    alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                            </div>
                            <div class="ps-4">
                                <p class="text-white  fs-5 pt-4 ">{{ $empresas_famosas[$posicao]?->nome }}</p>
                                <h6 class=" text-white">{{$empresas_famosas[$posicao]->categoria?->nome }}
                                </h6>

                                <label for="avaliacao" class="rating-label">
                                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range"
                                        max="5" step="0.5"
                                        value="{{$empresas_famosas[$posicao]->avaliacao ?? 0 }}" disabled>
                                </label>
                                <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                                    href="{{ route('empresa.visualizar', ['id' => $empresas_famosas[$posicao]->id]) }}"><i
                                        class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                                </a>
                            </div>

                        </div>





                        {{-- card empresa fim --}}
                </div>
                @endfor
            </div>
            <button class="carousel-control-prev " type="button" data-bs-target="#carrrossel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon  btn btn-dark" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carrrossel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon  btn btn-dark" aria-hidden="true"></span>
                <span class="visually-hidden">Proximo</span>
            </button>
        </div>

@endif

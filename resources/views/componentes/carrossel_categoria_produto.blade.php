@if (count($categoria_produtos) > 0)
                <div id="carrossel_categoria_produto" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        @for ($posicao = 0; $posicao < count($categoria_produtos); $posicao = $posicao + 3)
                            @if ($posicao == 0)
                                <div class="carousel-item active">
                            @else
                                <div class="carousel-item">
                            @endif
                            <div class="d-flex flex-wrap justify-content-center">

                                <a href="{{ route('empresa.categoria', ['id' => $categoria_produtos[$posicao]->id]) }}" class="marcacao_a_remov text-black mb-4 mx-3">
                                    <div class="card_categoria_produto rounded-3 p-3" style="width: 150px; height: 200px;">
                                      <img src="{{ Voyager::image($categoria_produtos[$posicao]->imagem) }}" width="150" class="rounded-3 img-fluid" alt="Imagem Da categoria Dos Produtos" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                                      <div class="text-center pt-2 pb-4">
                                        <p class="fs-5 card-title">{{ $categoria_produtos[$posicao]->nome }}</p>
                                      </div>
                                    </div>
                                  </a>



                                @if ($posicao + 1 < count($categoria_produtos))
                                <a href="{{ route('empresa.categoria', ['id' => $categoria_produtos[$posicao+1]->id]) }}" class="marcacao_a_remov text-black mb-4 mx-3">
                                    <div class="card_categoria_produto rounded-3 p-3" style="width: 150px; height: 200px;">
                                      <img src="{{ Voyager::image($categoria_produtos[$posicao+1]->imagem) }}" width="150" class="rounded-3 img-fluid" alt="Imagem Da categoria Dos Produtos" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                                      <div class="text-center pt-2 pb-4">
                                        <p class="fs-5 card-title">{{ $categoria_produtos[$posicao+1]->nome }}</p>
                                      </div>
                                    </div>
                                  </a>


                                @endif

                                @if ($posicao + 2 < count($categoria_produtos))
                                <a href="{{ route('empresa.categoria', ['id' => $categoria_produtos[$posicao+2]->id]) }}" class="marcacao_a_remov text-black mb-4 mx-3">
                                    <div class="card_categoria_produto rounded-3 p-3" style="width: 150px; height: 200px;">
                                      <img src="{{ Voyager::image($categoria_produtos[$posicao+2]->imagem) }}" width="150" class="rounded-3 img-fluid" alt="Imagem Da categoria Dos Produtos" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                                      <div class="text-center pt-2 pb-4">
                                        <p class="fs-5 card-title">{{ $categoria_produtos[$posicao+2]->nome }}</p>
                                      </div>
                                    </div>
                                  </a>


                                @endif
                            </div>

                            </div>
                        @endfor
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carrossel_categoria_produto"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon btn btn-dark" aria-hidden="true"></span>
                        <span class="visually-hidden">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carrossel_categoria_produto"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon btn btn-dark" aria-hidden="true"></span>
                        <span class="visually-hidden">Próximo</span>
                    </button>
                </div>
            @endif

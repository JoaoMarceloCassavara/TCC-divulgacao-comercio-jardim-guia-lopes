@extends('layouts.app')
@section('conteudo')

    <section class=" py-5">
        <div class="row flex-md-row flex-column">
            <div class="col-md-6 mb-3 mb-md-0">
                <div class="container my-5">
                    <div class="visualizar_icones_empresa position-relative mx-auto">
                        <img src="{{ Voyager::image($empresa->foto) }}" class="img-fluid rounded-3 w-100"
                            style="max-height: 400px;" alt="Imagem da Empresa"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-fundo-empresa.png') }}';">
                        <div class="position-absolute bottom-0 start-50 translate-middle-x" style="z-index: 1;">
                            <img src="{{ Voyager::image($empresa->logo) }}"
                                class="img-fluid rounded-circle border border-dark" alt="Logo da Empresa"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';"
                                width="155" height="155" style="margin-bottom: -50px;">
                        </div>
                    </div>

                    <div class="nome_empresa_visualizar text-center mt-4 pt-4">
                        <h5 class="fs-2 fw-bold">{{ $empresa->nome }}</h5>
                        <div class=" estrelas-center d-flex">
                            <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range"
                                    max="5" step="0.5" value="{{ $empresa->avaliacao ?? 0 }}" disabled>
                            </label>

                            @isset($empresa->avaliacao)
                                <h5 class="text-avaliacao-empresa">{{ number_format($empresa->avaliacao, 1, '.', '') }}</h5>
                            @endisset
                            @empty($empresa->avaliacao)
                                <p class="text-avaliacao-empresa">0</p>
                            @endempty
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-6">
                <div class="visualizar_informacao_empresa flex-grow-1 ps-3 my-4">
                    <h5 class="fw-bold">Sobre o Negócio</h5>
                    <div class="descricao-container overflow-auto mb-3">
                        <p class="text-md-start">{!! $empresa->descricao !!}</p>
                    </div>

                    <h6 class="fw-bold">Telefone</h6>
                    <p class="">{{ $empresa->telefone }}</p>

                    <h6 class="fw-bold">Endereço</h6>
                    <p class="">{{ $empresa->endereco }}</p>

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Horário de funcionamento
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content modal-produto">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Horário de funcionamento</h5>
                                </div>

                                <div class="modal-body">

                                    {!! $empresa->horario_funcionamento !!}
                                    @empty($empresa->horario_funcionamento)
                                        <div class="alert alert-success" role="alert">
                                            <p>Esse produtor não possui nenhum horário de funcionamento cadastrado. </p>
                                        </div>

                                    @endempty
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fechar</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="div-redes-sociais">
                        <p class="fw-bold fs-6">Redes Sociais</p>
                        <ul class="redes-sociais">
                            @isset($empresa->whatsapp)
                                <li class="icone-rede-social">
                                    <a href="{{ $empresa->whatsapp }}">
                                        <i class="fa-brands fa-square-whatsapp fa-2x" style="color: #11ff00;"></i>
                                    </a>
                                </li>
                            @endisset
                            @isset($empresa->facebook)
                                <li class="icone-rede-social">
                                    <a href="{{ $empresa->facebook }}">
                                        <i class="fa-brands fa-facebook fa-2x" style="color: #005eff;"></i>
                                    </a>
                                </li>
                            @endisset
                            @isset($empresa->instagram)
                                <li class="icone-rede-social">
                                    <a href="{{ $empresa->instagram }}">
                                        <svg width="30" height="30" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M23.9328 7.05204C23.8752 5.77422 23.6687 4.89992 23.3759 4.13611C23.0686 3.34828 22.6605 2.67574 21.9932 2.01281C21.3259 1.34988 20.6585 0.931946 19.8712 0.629304C19.1078 0.331465 18.234 0.129704 16.957 0.0720576C15.6751 0.0144115 15.2671 0 12.012 0C8.75215 0 8.34407 0.0144115 7.06701 0.0720576C5.78996 0.129704 4.91618 0.336269 4.15283 0.629304C3.36067 0.93675 2.68854 1.34508 2.02601 2.01281C1.36347 2.68054 0.945791 3.34828 0.64333 4.13611C0.350471 4.89992 0.14403 5.77422 0.0864187 7.05204C0.0288072 8.33467 0.0144043 8.743 0.0144043 12C0.0144043 15.2618 0.0288072 15.6701 0.0864187 16.948C0.14403 18.2258 0.350471 19.1001 0.64333 19.8639C0.950592 20.6517 1.35867 21.3243 2.02601 21.9872C2.68854 22.6549 3.36067 23.0681 4.14803 23.3707C4.91138 23.6685 5.78516 23.8703 7.06221 23.9279C8.34407 23.9856 8.75215 24 12.0072 24C15.2671 24 15.6751 23.9856 16.9522 23.9279C18.2292 23.8703 19.103 23.6637 19.8664 23.3707C20.6537 23.0633 21.3259 22.6549 21.9884 21.9872C22.6509 21.3195 23.0686 20.6517 23.3711 19.8639C23.6687 19.1001 23.8704 18.2258 23.928 16.948C23.9856 15.6653 24 15.257 24 12C24 8.743 23.9904 8.32986 23.9328 7.05204ZM21.7772 16.8519C21.7243 18.024 21.5275 18.6629 21.3643 19.0809C21.1482 19.6381 20.8842 20.0416 20.4617 20.4644C20.0392 20.8871 19.6407 21.1417 19.079 21.3675C18.6565 21.5308 18.018 21.7278 16.8514 21.7806C15.5887 21.8383 15.2094 21.8527 12.0024 21.8527C8.79536 21.8527 8.41608 21.8383 7.15343 21.7806C5.982 21.7278 5.34347 21.5308 4.92579 21.3675C4.36888 21.1513 3.96559 20.8871 3.54311 20.4644C3.12063 20.0416 2.86617 19.6429 2.64053 19.0809C2.4773 18.6581 2.28046 18.0192 2.22765 16.8519C2.17004 15.5885 2.15563 15.209 2.15563 12C2.15563 8.79103 2.17004 8.41153 2.22765 7.14812C2.28046 5.97598 2.4773 5.33707 2.64053 4.91914C2.85657 4.36189 3.12063 3.95837 3.54311 3.53563C3.96559 3.11289 4.36407 2.85829 4.92579 2.63251C5.34827 2.46918 5.9868 2.27222 7.15343 2.21938C8.41608 2.16173 8.79536 2.14732 12.0024 2.14732C15.2094 2.14732 15.5887 2.16173 16.8514 2.21938C18.0228 2.27222 18.6613 2.46918 19.079 2.63251C19.6359 2.84868 20.0392 3.11289 20.4617 3.53563C20.8842 3.95837 21.1386 4.35709 21.3643 4.91914C21.5275 5.34187 21.7243 5.98079 21.7772 7.14812C21.8348 8.41153 21.8492 8.79103 21.8492 12C21.8492 15.209 21.83 15.5885 21.7772 16.8519Z"
                                                fill="url(#paint0_linear_250_854)" />
                                            <path
                                                d="M12.0024 5.83191C8.59376 5.83191 5.83801 8.59412 5.83801 12C5.83801 15.4108 8.59856 18.1682 12.0024 18.1682C15.4063 18.1682 18.1669 15.4012 18.1669 12C18.1669 8.58931 15.4111 5.83191 12.0024 5.83191ZM12.0024 16.0016C9.794 16.0016 8.00325 14.2098 8.00325 12C8.00325 9.79028 9.794 7.99844 12.0024 7.99844C14.2109 7.99844 16.0016 9.79028 16.0016 12C16.0016 14.2098 14.2109 16.0016 12.0024 16.0016Z"
                                                fill="url(#paint1_linear_250_854)" />
                                            <path
                                                d="M18.4069 7.03282C19.2024 7.03282 19.8472 6.38759 19.8472 5.59167C19.8472 4.79574 19.2024 4.15051 18.4069 4.15051C17.6115 4.15051 16.9666 4.79574 16.9666 5.59167C16.9666 6.38759 17.6115 7.03282 18.4069 7.03282Z"
                                                fill="#BC30A0" />
                                            <path
                                                d="M0 12C0 15.2618 0.0144029 15.6701 0.0720144 16.948C0.129626 18.2258 0.336067 19.1001 0.628926 19.8639C0.936187 20.6517 1.34427 21.3243 2.0116 21.9872C2.67413 22.6501 3.34627 23.0681 4.13363 23.3707C4.89698 23.6685 5.77075 23.8703 7.04781 23.9279C8.32967 23.9856 8.73775 24 11.9928 24C15.2527 24 15.6607 23.9856 16.9378 23.9279C18.2148 23.8703 19.0886 23.6637 19.852 23.3707C20.6393 23.0633 21.3115 22.6549 21.974 21.9872C22.6365 21.3243 23.0542 20.6517 23.3567 19.8639C23.6543 19.1001 23.856 18.2258 23.9136 16.948C23.9712 15.6653 23.9856 15.257 23.9856 12C23.9856 8.73819 23.9712 8.32986 23.9136 7.05204C23.856 5.77422 23.6495 4.89992 23.3567 4.13611C23.0494 3.34828 22.6413 2.67574 21.974 2.01281C21.3163 1.34508 20.6441 0.931946 19.8568 0.629304C19.0934 0.331465 18.2196 0.129704 16.9426 0.0720576C15.6607 0.0144115 15.2527 0 11.9976 0C8.73775 0 8.32967 0.0144115 7.05261 0.0720576C5.77555 0.129704 4.90178 0.336269 4.13843 0.629304C3.35107 0.93675 2.67894 1.34508 2.0164 2.01281C1.35387 2.68054 0.936187 3.34828 0.633727 4.13611C0.336067 4.89992 0.129626 5.77422 0.0720144 7.05204C0.0144029 8.32986 0 8.73819 0 12ZM2.16523 12C2.16523 8.79584 2.17964 8.41153 2.23725 7.14812C2.29006 5.97598 2.4869 5.33707 2.65013 4.91914C2.86617 4.36189 3.13023 3.95837 3.55271 3.53563C3.97519 3.11289 4.37367 2.85829 4.93539 2.63251C5.35787 2.46918 5.9964 2.27222 7.16303 2.21938C8.42568 2.16173 8.80496 2.14732 12.012 2.14732C15.219 2.14732 15.5983 2.16173 16.861 2.21938C18.0324 2.27222 18.6709 2.46918 19.0886 2.63251C19.6455 2.84868 20.0488 3.11289 20.4713 3.53563C20.8938 3.95837 21.1482 4.35709 21.3739 4.91914C21.5371 5.34187 21.7339 5.98079 21.7868 7.14812C21.8444 8.41153 21.8588 8.79103 21.8588 12C21.8588 15.209 21.8444 15.5885 21.7868 16.8519C21.7339 18.024 21.5371 18.6629 21.3739 19.0809C21.1578 19.6381 20.8938 20.0416 20.4713 20.4644C20.0488 20.8871 19.6503 21.1417 19.0886 21.3675C18.6661 21.5308 18.0276 21.7278 16.861 21.7806C15.5983 21.8383 15.219 21.8527 12.012 21.8527C8.80496 21.8527 8.42568 21.8383 7.16303 21.7806C5.9916 21.7278 5.35307 21.5308 4.93539 21.3675C4.37848 21.1513 3.97519 20.8871 3.55271 20.4644C3.13023 20.0416 2.87578 19.6429 2.65013 19.0809C2.4869 18.6581 2.29006 18.0192 2.23725 16.8519C2.17483 15.5885 2.16523 15.2042 2.16523 12Z"
                                                fill="url(#paint2_linear_250_854)" />
                                            <defs>
                                                <linearGradient id="paint0_linear_250_854" x1="20.2955" y1="1.8352"
                                                    x2="2.93304" y2="23.1076" gradientUnits="userSpaceOnUse">
                                                    <stop stop-color="#AE3DAE" />
                                                    <stop offset="0.0468721" stop-color="#B23BA6" />
                                                    <stop offset="0.1216" stop-color="#BD368E" />
                                                    <stop offset="0.2148" stop-color="#CE2E69" />
                                                    <stop offset="0.3216" stop-color="#E62335" />
                                                    <stop offset="0.418" stop-color="#FF1800" />
                                                </linearGradient>
                                                <linearGradient id="paint1_linear_250_854" x1="14.9423" y1="7.0529"
                                                    x2="8.63493" y2="17.6514" gradientUnits="userSpaceOnUse">
                                                    <stop stop-color="#E12F6A" />
                                                    <stop offset="0.1705" stop-color="#EA3751" />
                                                    <stop offset="0.3563" stop-color="#F13D3E" />
                                                    <stop offset="0.5467" stop-color="#F64133" />
                                                    <stop offset="0.7469" stop-color="#F7422F" />
                                                    <stop offset="0.7946" stop-color="#F74C2F" />
                                                    <stop offset="0.8743" stop-color="#F7652F" />
                                                    <stop offset="0.9757" stop-color="#F78F2E" />
                                                    <stop offset="1" stop-color="#F79A2E" />
                                                </linearGradient>
                                                <linearGradient id="paint2_linear_250_854" x1="17.4381" y1="-0.988031"
                                                    x2="6.81389" y2="24.3363" gradientUnits="userSpaceOnUse">
                                                    <stop offset="0.2341" stop-color="#9E35A5" stop-opacity="0" />
                                                    <stop offset="0.4512" stop-color="#D42F7F" stop-opacity="0.5" />
                                                    <stop offset="0.7524" stop-color="#F7772E" />
                                                    <stop offset="0.9624" stop-color="#FEF780" />
                                                </linearGradient>
                                            </defs>
                                        </svg>
                                    </a>
                                </li>
                            @endisset
                            @isset($empresa->twitter)
                                <li class="icone-rede-social">
                                    <a href="{{ $empresa->twitter }}">
                                        <i class="fa-brands fa-twitter fa-2x" style="color: #00acee;"></i>
                                    </a>
                                </li>
                            @endisset
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>

    {{-- Produto por categoria --}}
    @forelse ($categorias as $nomeDaCategoria => $produtos)
        <div class="d-flex justify-content-between p-3">
            <h4>{{ $nomeDaCategoria }}</h4>


            @foreach ($produtos as $produto)
                @if ($loop->first)
                    <a class="text-black fw-bold"
                        href="{{ route('vermaisproduto', ['id' => $empresa->id, 'categoria_id' => $produto->categoria->id]) }}">Ver
                        tudo <i class="fa-solid fa-chevron-right"></i></a>
        </div>
        <section class="d-flex flex-wrap py-4 ps-5">
    @endif
    <a {{-- botao Modal --}} data-bs-toggle="modal" data-bs-target="#produto-modal-{{ $produto->id }}"
        {{-- Final botao Modal --}}>
        <div class="card-link m-2 p-4">

            <img src="{{ Voyager::image($produto->imagem) }}" width="220" height="170" class="rounded-2"
                alt="Imagem do produto"
                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">

            <div class="p-1 text-center">
                <h5 class="pt-3">{{ $produto->nome }}</h5>
                <p class="">{{ $produto->empresa->nome }}</p>
                <div class="ps-5">
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
    <div class="modal fade" id="produto-modal-{{ $produto->id }}" tabindex="-1"
        aria-labelledby="produto-modal-{{ $produto->id }}Label" aria-hidden="true"
        data-video-id="{{ $produto->video_id }}" data-produto-id="{{ $produto->id }}">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content modal-produto">
                <div class="modal-header">
                    <h5 class="modal-title" id="produto-modal-{{ $produto->id }}Label">Produto</h5>
                    <button type="button" id="produto-modal-{{ $produto->id }}Close" class="btn-close"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="d-flex ps-5 ">
                        <div class="modal-card-produto p-4 rounded-3">
                            <img src="{{ Voyager::image($produto->imagem) }}" width="170" height="160"
                                class="rounded-3" alt="Imagem do produto"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                        </div>

                        <div class="ps-4">

                            <p class=" fw-bold fs-3">{{ $produto->nome }}</p>
                            <div class="d-flex">
                                {{-- <input class="rating py-2" type="range" value="{{$produto->avaliacao}}" disabled> --}}
                                <label for="avaliacao" class="rating-label">
                                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range"
                                        max="5" step="0.5" value="{{ $produto->avaliacao ?? 0 }}" disabled>
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
                                <p class="fw-bold fs-6">Pedidos {{ $produto->pedidos->count() }}</p>
                                <p class="pt-1 fw-bold fs-5">Preço {{ $produto->getPreco() }}
                            </div>
                        </div>


                    </div>
                    <div class="d-flex">
                        <div class="pt-5 ps-4">
                            <script src="https://www.youtube.com/iframe_api"></script>
                            <script src="https://player.vimeo.com/api/player.js"></script>



                            @isset($produto->video_curto)
                                {{-- Rodar o video do youtube  --}}
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
                                        <iframe id="video-player" width="450" height="315"
                                            class="embed-responsive-item"
                                            src="https://www.youtube.com/embed/{{ $videoId }}?enablejsapi=1"
                                            frameborder="0" allowfullscreen></iframe>
                                    </div>
                                @endif
                                {{-- Rodar o video do youtube Fim --}}
                                <!-- Seção de scripts -->
                            @endisset


                        </div>
                        <div class="pt-5 ps-3">
                            <h4>Descrição</h4>
                            <p>{{ $produto->descricao }}</p>

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

                <header class="ps-3 py-4">
                    <p class="fw-bold fs-4">Avaliações</p>
                </header>
                @forelse ($produto->avaliacoes as $avaliacao)
                    <div class="rounded-3 shadow ms-3 me-3 mb-5 bg-body rounded">
                        <div class="d-flex p-2 bd-highlight mb-3 m-3">
                            <div class="d-flex align-items-center">
                                <div class="pt-5 flex-shrink-0">
                                    <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140"
                                        height="120" alt="Imagem avatar" class="rounded-circle"
                                        onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/user_default.png') }}';">
                                    <div class="ps-2 pt-3">
                                        <label for="avaliacao" class="rating-label">
                                            <input class="rating rating--nojs" id="avaliacao" name="avaliacao"
                                                type="range" max="5" step="0.5"
                                                value="{{ $avaliacao->avaliacao ?? 0 }}" disabled>
                                        </label>
                                    </div>
                                </div>
                                <div class="ps-3" style="max-width: 200px;">
                                    <p class="text-break" style="font-size: 1.1rem; font-weight: bold; margin-bottom: 0;">
                                        {{ $avaliacao->usuario->name }}</p>
                                    <p>{{ $avaliacao->updated_at->format('d/m/Y H:i:s') }}</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-start flex-grow-1 p-3 ms-3 mt-3"
                                style="max-height: 120px; overflow-y: auto;">
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
    </section>
    @empty
        <div class="ps-4">
            <div class="alert alert-success w-25" role="alert">
                <p class="text-center">Nenhum Produto cadastrado para o produtor: {{ $empresa->nome }}.</p>
            </div>
        </div>
        @endforelse
        <hr class="border border-dark ">
        @isset($empresa->bibliografia_produtor)
            <section>
                <header class="ps-5 pb-3">
                    <h4>Bibliografia do Produtor</h4>
                </header>
                <div class="border border-dark card-bibliografia rounded-3">
                    <div class="row align-items-center py-4 px-md-3 px-0">
                        <div class="col-md-1"></div> <!-- coluna vazia -->
                        <div class="col-md-1 col-12 text-center">
                            <img src="{{ Voyager::image($empresa->logo) }}" width="110" height="110" alt="Logo da Empresa"
                                class="rounded-circle border border-dark img-fluid"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                        </div>
                        <div class="col-md-9 col-12 pt-3 text-center text-md-start">
                            <h4>{{ $empresa?->user?->name }}</h4>
                            <p class="fw-bold">{{ $empresa?->cidade?->nome }}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-12 py-4 px-md-5 px-3">
                            <p>{!! $empresa->bibliografia_produtor !!}</p>
                        </div>
                        <div class="col-md-6 col-12 py-3 px-md-5 px-3">
                            <img src="{{ Voyager::image($empresa->foto) }}" class="rounded-3 img-fluid mx-auto d-block"
                                alt="Imagem da Empresa"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-fundo-empresa.png') }}';">
                        </div>
                    </div>
                </div>
            </section>
        @endisset
        <section>
            <hr>
            <header class="pt-2 header_titulo pb-2">
                <p class="fw-bold fs-4">Avaliações</p>
            </header>

            @forelse ($empresa->avaliacoes as $avaliacao)
                <div class="container card_empresa_avaliacao">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <div class="rounded-3 shadow ms-3 me-3 mb-5  rounded  bg-color">
                                <div class="d-flex p-2 bd-highlight mb-3 m-3">
                                    <div class="d-flex align-items-center">
                                        <div class="pt-5 flex-shrink-0">
                                            <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140"
                                                height="120" alt="Imagem avatar" class="rounded-circle"
                                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/user_default.png') }}';">
                                            <div class="ps-2 pt-3">
                                                <label for="avaliacao" class="rating-label">
                                                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao"
                                                        type="range" max="5" step="0.5"
                                                        value="{{ $avaliacao->avaliacao ?? 0 }}" disabled>
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
                                    <div class="d-flex align-items-start flex-grow-1 p-3 ms-3 mt-3"
                                        style="max-height: 120px; overflow-y: auto;">
                                        <p class="text-break mb-0" style="font-size: 1.1rem; max-width: 450px;">
                                            {{ mb_substr($avaliacao->descricao, 0, 500) }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            @empty
                <div class="ps-4">
                    <div class="alert alert-success w-25" role="alert">
                        <p class="text-center">Nenhuma Avaliação cadastrada para esse produtor: {{ $empresa->nome }}.</p>
                    </div>
                </div>
            @endforelse
            <hr>
        </section>
        {{-- Produto por categoria final --}}
    @endsection

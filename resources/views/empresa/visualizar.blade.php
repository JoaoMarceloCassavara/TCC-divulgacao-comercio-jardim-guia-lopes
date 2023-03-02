@extends('layouts.app')
@section('conteudo')
    <section class="d-flex py-5 ps-5">
        <div class="visualizar_icones_empresa position-relative">
            <img src="{{ Voyager::image($empresa->foto) }}"width="800" height="400" class="rounded-3"
                alt="Imagem da Empresa" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-fundo-empresa.png') }}';">
            <div class="position-absolute logo_empresa">
                <img src="{{ Voyager::image($empresa->logo) }}"width="155" height="155" alt="Logo da Empresa"
                    class="rounded-circle border border-dark"
                    onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
            </div>
            <div class="nome_empresa_visualizar text-center">
                <h5 class="fs-2 fw-bold  ">{{ $empresa->nome }}</h5>
            </div>
        </div>

        <div class="visualizar_informacao_empresa flex-grow-1 ms-3">
            <h5 class="fw-bold">Sobre o Negócio</h5>
            <p class="">{{ $empresa->descricao }}</p>

            <h6 class="fw-bold">Telefone</h6>
            <p class="">{{ $empresa->telefone }}</p>


            <h6 class="fw-bold">Endereço</h6>
            <p class="">{{ $empresa->endereco }}</p>

            <div class="div-redes-sociais">
                <p class="fw-bold fs-6">Faça seu pedido direto com o produtor </p>
                <ul class="redes-sociais">
                    @isset($empresa->whatsapp)
                        <li class="icone-rede-social">
                            <a href="{{ $empresa->whatsapp }}">
                                <svg width="38" height="38" viewBox="0 0 24 24" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <g clip-path="url(#clip0_250_901)">
                                        <path
                                            d="M6.10352e-05 24L1.69633 17.8403C0.647625 16.0323 0.0974822 13.9848 0.103213 11.8916C0.103213 5.3327 5.46711 0 12.0516 0C15.2493 0 18.2522 1.23764 20.5043 3.48479C22.7622 5.73194 24.0058 8.72053 24 11.8973C24 18.4563 18.6362 23.789 12.0459 23.789H12.0402C10.0402 23.789 8.07455 23.2871 6.3267 22.3403L6.10352e-05 24ZM6.63043 20.1901L6.99146 20.4068C8.51581 21.308 10.2637 21.7814 12.0459 21.7871H12.0516C17.5244 21.7871 21.9829 17.3555 21.9829 11.903C21.9829 9.26236 20.9513 6.78137 19.0774 4.91065C17.2035 3.03992 14.7049 2.01331 12.0516 2.01331C6.57885 2.0076 2.1204 6.43916 2.1204 11.8916C2.1204 13.7567 2.64189 15.576 3.63903 17.1502L3.87398 17.5266L2.87112 21.1711L6.63043 20.1901Z"
                                            fill="white" />
                                        <path
                                            d="M0.418335 23.5837L2.0573 17.635C1.04298 15.8955 0.510025 13.9164 0.510025 11.8974C0.515756 5.56657 5.69054 0.416382 12.0516 0.416382C15.1404 0.416382 18.0344 1.6141 20.212 3.7814C22.3897 5.9487 23.5874 8.83463 23.5874 11.9031C23.5874 18.2339 18.4069 23.3841 12.0516 23.3841H12.0458C10.1146 23.3841 8.21776 22.8993 6.53294 21.9867L0.418335 23.5837Z"
                                            fill="url(#paint0_linear_250_901)" />
                                        <path
                                            d="M6.10352e-05 24L1.69633 17.8403C0.647625 16.0323 0.0974822 13.9848 0.103213 11.8916C0.103213 5.3327 5.46711 0 12.0516 0C15.2493 0 18.2522 1.23764 20.5043 3.48479C22.7622 5.73194 24.0058 8.72053 24 11.8973C24 18.4563 18.6362 23.789 12.0459 23.789H12.0402C10.0402 23.789 8.07455 23.2871 6.3267 22.3403L6.10352e-05 24ZM6.63043 20.1901L6.99146 20.4068C8.51581 21.308 10.2637 21.7814 12.0459 21.7871H12.0516C17.5244 21.7871 21.9829 17.3555 21.9829 11.903C21.9829 9.26236 20.9513 6.78137 19.0774 4.91065C17.2035 3.03992 14.7049 2.01331 12.0516 2.01331C6.57885 2.0076 2.1204 6.43916 2.1204 11.8916C2.1204 13.7567 2.64189 15.576 3.63903 17.1502L3.87398 17.5266L2.87112 21.1711L6.63043 20.1901Z"
                                            fill="url(#paint1_linear_250_901)" />
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M9.06585 6.9183C8.84235 6.42211 8.6074 6.4107 8.39536 6.405C8.22344 6.39929 8.02287 6.39929 7.8223 6.39929C7.62172 6.39929 7.30081 6.47344 7.02574 6.77001C6.75067 7.06659 5.98276 7.78522 5.98276 9.251C5.98276 10.7111 7.05439 12.1255 7.20339 12.3251C7.35238 12.5248 9.27215 15.6217 12.3037 16.8137C14.8252 17.8061 15.3409 17.6065 15.8853 17.5552C16.4297 17.5039 17.6504 16.8366 17.9025 16.1407C18.1489 15.4449 18.1489 14.8518 18.0744 14.7263C17.9999 14.6008 17.7994 14.5267 17.5014 14.3784C17.2034 14.2301 15.7363 13.5115 15.4613 13.4088C15.1862 13.3118 14.9856 13.2605 14.7908 13.5571C14.5902 13.8537 14.0171 14.521 13.8452 14.7206C13.6733 14.9202 13.4956 14.943 13.1977 14.7947C12.8997 14.6464 11.9369 14.3328 10.7965 13.3175C9.90826 12.5305 9.30654 11.5552 9.13462 11.2586C8.9627 10.962 9.11743 10.8023 9.26642 10.654C9.39823 10.5229 9.56442 10.3061 9.71341 10.135C9.86241 9.96393 9.91399 9.83846 10.0114 9.63884C10.1088 9.43922 10.063 9.26811 9.98849 9.11982C9.91399 8.97724 9.32946 7.50576 9.06585 6.9183Z"
                                            fill="white" />
                                    </g>
                                    <defs>
                                        <linearGradient id="paint0_linear_250_901" x1="12.0023" y1="23.5825" x2="12.0023"
                                            y2="0.415571" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#20B038" />
                                            <stop offset="1" stop-color="#60D66A" />
                                        </linearGradient>
                                        <linearGradient id="paint1_linear_250_901" x1="12.0024" y1="23.9977" x2="12.0024"
                                            y2="0" gradientUnits="userSpaceOnUse">
                                            <stop stop-color="#F9F9F9" />
                                            <stop offset="1" stop-color="white" />
                                        </linearGradient>
                                        <clipPath id="clip0_250_901">
                                            <rect width="24" height="24" rx="6" fill="white" />
                                        </clipPath>
                                    </defs>
                                </svg>

                            </a>
                        </li>
                    @endisset
                    @isset($empresa->facebook)
                        <li class="icone-rede-social">
                            <a href="{{ $empresa->facebook }}">
                                <svg width="40" height="40" viewBox="0 0 24 24" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M22 12.0607C22 6.504 17.5233 2 12 2C6.47667 2 2 6.504 2 12.0607C2 17.0833 5.656 21.2453 10.4373 22V14.9693H7.89867V12.06H10.4373V9.844C10.4373 7.32267 11.93 5.92933 14.2147 5.92933C15.308 5.92933 16.4533 6.126 16.4533 6.126V8.602H15.1913C13.9493 8.602 13.5627 9.378 13.5627 10.174V12.0607H16.336L15.8927 14.9687H13.5627V22C18.344 21.2453 22 17.0833 22 12.0607Z"
                                        fill="#337FFF" />
                                </svg>


                            </a>
                        </li>
                    @endisset
                    @isset($empresa->instagram)
                        <li class="icone-rede-social">
                            <a href="{{ $empresa->instagram }}">
                                <svg width="36" height="40" viewBox="0 0 24 24" fill="none"
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
                                        <linearGradient id="paint0_linear_250_854" x1="20.2955" y1="1.8352" x2="2.93304"
                                            y2="23.1076" gradientUnits="userSpaceOnUse">
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
                                <svg width="39" height="38" viewBox="0 0 25 24" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M21.557 7.18078C21.5663 7.39198 21.5663 7.59358 21.5663 7.80478C21.5755 14.208 16.8711 21.6 8.26783 21.6C5.73038 21.6 3.23923 20.8416 1.1 19.4208C1.47043 19.4688 1.84086 19.488 2.21129 19.488C4.31348 19.488 6.36011 18.7584 8.01779 17.4048C6.01746 17.3664 4.25792 16.0128 3.64671 14.0352C4.35053 14.1792 5.07287 14.1504 5.75816 13.9488C3.58188 13.5072 2.01681 11.52 2.00755 9.20639C2.00755 9.18719 2.00755 9.16799 2.00755 9.14879C2.65581 9.52319 3.38741 9.73439 4.12827 9.75359C2.08164 8.33278 1.44265 5.50077 2.68359 3.28317C5.06361 6.31678 8.56417 8.15038 12.324 8.35198C11.9444 6.67198 12.463 4.90557 13.6761 3.71517C15.5561 1.88156 18.5195 1.97756 20.2976 3.92637C21.344 3.71517 22.3534 3.31197 23.2703 2.74556C22.9184 3.86877 22.1868 4.81917 21.2144 5.42397C22.1405 5.30877 23.048 5.04957 23.9 4.66557C23.2703 5.64477 22.4738 6.48958 21.557 7.18078Z"
                                        fill="#1D9BF0" />
                                </svg>

                            </a>
                        </li>
                    @endisset
                </ul>
                   <p>{!! $empresa->horario_funcionamento !!}</p>

            </div>


        </div>

    </section>
    {{-- Produto por categoria --}}
    @foreach ($categorias as $nomeDaCategoria => $produtos)
        <div class="d-flex justify-content-between p-3">
            <h4>{{ $nomeDaCategoria }}</h4>

            <a class="text-black fw-bold" href="{{ route('produto') }}">Ver tudo <i
                    class="fa-solid fa-chevron-right"></i></a>
        </div>
        <section class="d-flex flex-wrap py-4 ps-5">
            @forelse ($produtos as $produto)
                <a {{-- botao Modal --}} data-bs-toggle="modal" data-bs-target="#produto-modal-{{ $produto->id }}"
                    {{-- Final botao Modal --}}>
                    <div class="card-link m-2 p-4">

                        <img src="{{ Voyager::image($produto->imagem) }}" width="200" height="185" class="rounded-2"
                            alt="Imagem do produto"
                            onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">

                        <div class="card-componente">
                            <h5 class="card-title">{{ $produto->nome }}</h5>
                            <p class="card-text">{{ $produto->descricao }}</p>
                            <p class="card-text">Preço {{ $produto->getPreco() }} </p>
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
                                            {{-- <input class="rating py-2" type="range" value="{{$produto->avaliacao}}" disabled> --}}
                                            <label for="avaliacao" class="rating-label">
                                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$empresa->avaliacao}}" disabled>
                                            </label>
                                        <div class="py-2">
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
                                        <div class="py-5 ">
                                        <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140" height="120"
                                             alt="Imagem do produto" class="rounded-circle"
                                            onerror="this.onerror=null;this.src='{{ asset('assets/images/images_usuario/foto_sem_icone.jpg') }}';">
                                             <div class="ps-2 pt-3">
                                                <label for="avaliacao" class="rating-label">
                                                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$avaliacao->usuario->avaliacao}}" disabled>
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
    @endforeach
    <hr class="border border-dark ">
    <header class="pt-5 pb-3 ps-5">
        <h4 class="fw-bold">Avaliações</h4>
    </header>
    @forelse ($empresa->avaliacoes as $avaliacao)
        <div class="card_avaliacao_empresa rounded-3">
            <div class="d-flex bd-highlight mb-3  m-4">
                <div class="d-flex align-items-center">
                    <div class="py-5 flex-shrink-0">
                    <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" width="140" height="120"
                         alt="Imagem do produto"
                        onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
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




        {{--
    {{$avaliacao->avaliacao}}
    {{$avaliacao->descricao}}
    {{$avaliacao->updated_at}}
    {{$avaliacao->usuario->name}}
    <img src="{{ Voyager::image($avaliacao->usuario->avatar) }}" class="modal-imagem"
                                                class="imagem-produto"  alt="Imagem do produto" onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';"> --}}
    @empty
    <p class="alert alert-success">Nenhuma avaliação cadastrada para essa empresa</p>
    @endforelse
    {{-- Produto por categoria final --}}
@endsection

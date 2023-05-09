@extends('layouts.app')

@section('conteudo')
    @if ($message = Session::get('success'))
        <header class=" text-center pt-2">
            <div class="d-inline-flex p-2 bd-highlight ">
                <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                    <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                        <path
                            d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
                    </symbol>
                    <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
                        <path
                            d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
                    </symbol>
                    <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                        <path
                            d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                    </symbol>
                </svg>
                <div class="alert alert-primary alert-dismissible fade show" role="alert">
                    <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:">
                        <use xlink:href="#info-fill" />
                    </svg>
                    <strong>{{ $message }}</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </div>
        </header>
    @endif

    {{-- <img src="/assets\images/Imagens para o site/6.png" alt="" class="imagem-fullscreen"> --}}
    <div class="body-pagina-inicial ">
        <section class="py-5">
            <div class="text-center py-4">
                <h4>Compre com nossos produtores em destaques.</h4>
            </div>
            @include('componentes.carrossel_destaque_empresa')
        </section>

        <section class="py-5">
            <div class="text-center py-4">
                <h4>Conheça os produtores bem avaliados da Janela do Produtor.</h4>
            </div>
            @include('componentes.carrossel_empresa_famosas')
        </section>
    </div>

    <div class="imagem_de_fundo">
        <section class="py-5">
            <div class="text-center py-3 ">
                <h3 class="h4-texto-url-image">Na Janela do Produtor, você encontra os melhores produtos do comércio local.</h3>
                <hr class=" hr-grande ">
            </div>
            @include('componentes.carrossel_categoria_produto')
        </section>
    </div>

    <div class="body-pagina-inicial">
        <section class="py-5">
            <div class="text-center pb-4">
                <h4>Na Janela do Produtor, você encontra os melhores produtores locais do comércio.</h4>
            </div>
            @include('componentes.carrossel')
        </section>

        <section class="py-5 position-relative" style="height: 70vh;">
            <div class="text-center pb-2">
                <h4>Descubra os sabores da sua região!</h4>
            </div>
            <div class="text-center ms-5 me-5">
                <img src="/assets/images/Imagens para o site/Rectangle 42.png" alt="Imagem de fundo do card cidade"
                    class="img-fluid w-100">
            </div>

            <div class="card-container position-absolute top-0 start-50 translate-middle-x"
                style="padding-top: 16vh; padding-bottom: 5rem;">
                <div class="d-flex flex-wrap justify-content-center">
                    <div class="card-grid">
                        @foreach ($cidades as $cidade)
                            <a href="{{ route('cidade_produto', ['id' => $cidade->id]) }}">
                                <div class="card bg-dark">
                                    <img src="{{ Voyager::image($cidade->imagem) }}" width="165" height="143"
                                        class="rounded-3" alt="Imagem da Cidade: {{ $cidade->nome }}"
                                        onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                                    <div class="card-img-overlay d-flex align-items-end text-center pt-5">
                                        <h5 class="card-title text-truncate">{{ $cidade->nome }}</h5>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    </div>
                </div>
            </div>

            {{-- Possivel botão para ver mais cidades --}}
            {{-- <div class="position-relative mt-5">
            <div class="me-5 d-flex justify-content-end">
                <a class="text-black fw-bold" href="">Ver tudo <i class="fa-solid fa-chevron-right"></i></a>
            </div>
        </div> --}}
            {{-- Possivel botão para ver mais cidades fim --}}
        </section>

        <section class="py-5">
            <div class="text-center pb-4">
                <h4>Veja mais produtores que podem interessar a você.</h4>
            </div>
            <div class=" d-flex flex-wrap pt-2 pb-5 card_empresa_section_position">
                @forelse ($empresas as $empresa)
                    <div class="card_empresa d-flex align-items-center  m-1  p-4">
                        <div>
                            <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130"
                                class="rounded-circle"
                                alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                        </div>
                        <div class="ps-4">
                            <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
                            <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
                            {{-- <input class="rating py-2" type="range" value="{{$empresa->avaliacao}}" disabled> --}}
                            <label for="avaliacao" class="rating-label">
                                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range"
                                    max="5" step="0.5" value="{{ $empresa->avaliacao ?? 0 }}" disabled>
                            </label>
                            <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                                href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                                    class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                            </a>
                        </div>
                    </div>
                @empty
                    <div class="">
                        <div class="alert alert-success " role="alert">
                            <p class="text-center">Nenhum Produtor cadastrado.</p>
                        </div>
                    </div>
                @endforelse
            </div>

        </section>
    </div>
@endsection

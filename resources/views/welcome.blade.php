@extends('layouts.app')

@section('conteudo')
    <header class="pt-5 ps-4">
        <h4>A procura de Produtores</h4>
    </header>
    @include('componentes.carrossel')
    <header class="pt-5 ps-4">
        <h4>Produtores destaques da Janela do produtor</h4>
    </header>
    <section class=" d-flex flex-wrap  pt-2 pb-5 ">
        @forelse ($empresas_destaques as $empresa_destaque)
            <div class="card_empresa d-flex align-items-center  m-3 p-4">
                <div>
                <img src="{{ Voyager::image($empresa_destaque->empresa->logo) }}"height="130" width="130" class="rounded-circle"
                    alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                </div>
                <div class="ps-4">
                    <p class="text-white  fs-5 pt-4 ">{{ $empresa_destaque->empresa->nome }}</p>
                    <h6 class=" text-white">{{ $empresa_destaque->empresa?->categoria?->nome }}</h6>
                    {{-- <input class="rating py-2" type="range" value="{{$empresa->avaliacao}}" disabled> --}}
                    <label for="avaliacao" class="rating-label">
                        <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$empresa_destaque->empresa->avaliacao ?? 0}}" disabled>
                    </label>
                    <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                        href="{{ route('empresa.visualizar', ['id' => $empresa_destaque->empresa->id]) }}"><i
                            class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                    </a>
                </div>
            </div>
        @empty
            <p class="alert alert-success">Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
    <header class="pt-5 ps-4">
        <h4>Produtores Bem avaliados</h4>
    </header>
    <section class=" d-flex flex-wrap pt-2 pb-5 ">
        @forelse ($empresas_famosas as $empresa)
        <div class="card_empresa d-flex align-items-center  m-3 p-4">
            <div>
            <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130" class="rounded-circle"
                alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/produto_padrao.jpg') }}';">
            </div>
            <div class="ps-4">
                <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
                <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
                {{-- <input class="rating py-2" type="range" value="{{$empresa->avaliacao}}" disabled> --}}
                <label for="avaliacao" class="rating-label">
                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$empresa->avaliacao ?? 0}}" disabled>
                </label>
                <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                    href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                        class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                </a>
            </div>
        </div>
        @empty
            <p class="alert alert-success">Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
    <header class="pt-5 ps-4">
        <h4>O que procura de Produtos</h4>
    </header>
    <section class="d-flex flex-wrap pt-2 pb-5 ps-5">
        @forelse ($categoria_produtos as $categoria_produto)
            <a class="marcacao_a_remov text-black"
                href="{{ route('produto.categoria', ['id' => $categoria_produto->id]) }}">
                <div class="card_categoria_produto rounded-3 p-5 m-3">
                    <img src="{{ Voyager::image($categoria_produto->imagem) }}" width="120" height="95"
                        class="rounded-3"
                        alt="Imagem Da categoria Dos Produtos"onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                    <div class="text-center py-2">
                        <p class="fs-5 card-title">{{ $categoria_produto->nome }}</p>
                    </div>
                </div>
            </a>
        @empty
            <p class="alert alert-success">Nenhuma categoria cadastrada para produro</p>
        @endforelse
    </section>  <header class="pt-5 ps-4">
        <h4>Cidades</h4>
    </header>

    <section class="d-flex flex-wrap pt-2 pb-5 ps-5">
        @forelse ($cidades as $cidade)
         <a class="marcacao_a_remov text-black" href="{{ route('cidade_produto', ['id' => $cidade->id]) }}">
            <div class="m-3 card_cidade_mostrar pt-5  d-inline-block  rounded-3">
                <div class="text-center d-block ">
                    <img src="{{ Voyager::image($cidade->imagem) }}" width="120" height="100" class="rounded-3"
                    alt="Imagem Da cidade"
                    onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-categoria.png') }}';">
                </div>
             <div class="text-center w-100 ps-3  pt-2 ">
                <p class="fs-5 text-break ">{{ $cidade->nome }}</p>
             </div>

            </div>
         </a>
        @empty
            <p class="alert alert-success">Nenhuma categoria para Produto cadastrada</p>
        @endforelse
    </section>

    <header class="pt-5 ps-4">
        <h4>Produtores</h4>
    </header>
    <section class=" d-flex flex-wrap pt-2 pb-5 ">
        @forelse ($empresas as $empresa)
            <div class="card_empresa d-flex align-items-center  m-3 p-4">
                <div>
                <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130" class="rounded-circle"
                    alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
                </div>
                <div class="ps-4">
                    <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
                    <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
                    {{-- <input class="rating py-2" type="range" value="{{$empresa->avaliacao}}" disabled> --}}
                    <label for="avaliacao" class="rating-label">
                        <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$empresa->avaliacao ?? 0}}" disabled>
                    </label>
                    <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                        href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                            class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                    </a>
                </div>
            </div>
        @empty
            <p class="alert alert-success">Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
@endsection

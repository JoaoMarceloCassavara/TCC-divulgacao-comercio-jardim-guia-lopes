@extends('layouts.app')

@section('conteudo')
    <header class="pt-5">
        <h1>O que procura de Lojas</h1>
    </header>
    @include('componentes.carrossel')
    <header class="pt-5">
        <h1>Lojas Bem avaliadas</h1>
    </header>
    <section class=" d-flex flex-wrap py-5 ">
        @forelse ($empresas_famosas as $empresa)
            <div class="card_empresa d-flex p-4 m-2 ">
                <img src="{{ Voyager::image($empresa->logo) }}"height="160" width="160" class="rounded-circle"
                    alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                <div class="col-md-8 ">
                    <h5 class="text-white text-center nome_empresa py-2">{{ $empresa->nome }}</h5>
                    <h6 class=" text-white ps-5">{{ $empresa?->categoria?->nome }}</h6>
                    <p class=" text-white ps-5">11km</p>
                    <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov m-3"
                        href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                            class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                    </a>
                </div>
            </div>
        @empty
            <p class="alert alert-success">Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
    <header class="pt-5">
        <h1>O que procura de Produtos</h1>
    </header>
    <section class="d-flex flex-wrap py-4 ps-5">
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
    </section>
    <header class="pt-5">
        <h1>Lojas</h1>
    </header>
    <section class=" d-flex flex-wrap py-5">
        @forelse ($empresas as $empresa)
            <div class="card_empresa d-flex p-4 m-2 ">
                <img src="{{ Voyager::image($empresa->logo) }}"height="160" width="160" class="rounded-circle"
                    alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/produto_padrao.jpg') }}';">
                <div class="col-md-8 ">
                    <h5 class="text-white text-center nome_empresa py-2">{{ $empresa->nome }}</h5>
                    <h6 class=" text-white ps-5">{{ $empresa?->categoria?->nome }}</h6>
                    <p class=" text-white ps-5">11km</p>
                    <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov m-3"
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

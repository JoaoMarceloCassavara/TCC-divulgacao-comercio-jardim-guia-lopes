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
            <div class="card-empresa p-3 m-2">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="{{ Voyager::image($empresa->logo) }}" class=" foto_empresa" alt="Logo Empresa">
                    </div>
                    <div class="col-md-8">
                        <div class="titulo_empresa">
                            <h5 class="nome_empresa text-white">{{ $empresa->nome }}</h5>
                            <h6 class="categoria_empresa text-white">{{ $empresa->categoria->nome }}</h6>
                            <p class="localizacao-empre text-white">11km</p>
                            <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                                href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                                    class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                            </a>

                        </div>
                    </div>
                </div>
            </div>

        @empty
            <p>Nenhuma empresa cadastrada</p>
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
                        class="rounded-3" alt="Imagem Da categoria Dos Produtos">
                    <div class="text-center py-2">
                        <p class="fs-5 card-title">{{ $categoria_produto->nome }}</p>
                    </div>
                </div>
            </a>
        @empty
            <p>Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
    <header class="pt-5">
        <h1>Lojas</h1>
    </header>
    <section class=" d-flex flex-wrap py-5 ">
        @forelse ($empresas as $empresa)
            <div class="card-empresa p-3 m-2">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="{{ Voyager::image($empresa->logo) }}" class=" foto_empresa" alt="Logo Empresa">
                    </div>
                    <div class="col-md-8">
                        <div class="titulo_empresa">
                            <h5 class="nome_empresa text-white">{{ $empresa->nome }}</h5>
                            <h6 class="categoria_empresa text-white">{{ $empresa->categoria->nome }}</h6>
                            <p class="localizacao-empre text-white">11km</p>
                            <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov"
                                href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i
                                    class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                            </a>

                        </div>
                    </div>
                </div>
            </div>

        @empty
            <p>Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
@endsection

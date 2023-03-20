@extends('layouts.app')

@section('conteudo')
    <header class="pt-5 ps-4">
        <h4>A procura de Produtores</h4>
    </header>
    <section class="d-flex flex-wrap pt-2 pb-5 ps-5">
        @forelse ($categoria_empresas as $categoria_empresa)
            <a class="marcacao_a_remov text-black" href="{{ route('empresa.categoria', ['id' => $categoria_empresa->id]) }}">
                <div class="card_categoria_produto rounded-3 p-5 m-2">
                    <img src="{{ Voyager::image($categoria_empresa->imagem) }}" width="120" height="95" class="rounded-3"
                        alt="Imagem Da categoria Dos Produtos"onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                    <div class="text-center py-2">
                        <p class="fs-5 card-title">{{ $categoria_empresa->nome }}</p>
                    </div>
                </div>
            </a>
        @empty
            <p class="alert alert-success">Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
    <header class="pt-5 ps-4">
        <h4>Produtores</h4>
    </header>
    <section class=" d-flex flex-wrap pt-2 pb-5">
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
                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$empresa->avaliacao ?? 0 }}" disabled>
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

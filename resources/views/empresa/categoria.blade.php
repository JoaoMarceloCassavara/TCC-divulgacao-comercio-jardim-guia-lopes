@extends('layouts.app')

@section('conteudo')
<header class="mb-5">
    <div class="text-center position-relative">
    <img src="{{ Voyager::image($categoria_empresa->imagem) }}" height="300" class=" w-100  rounded-bottom"
    alt="Imagem do produto"
    onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
</div>
<div class=" header_nome_categoria p-3 w-25 rounded-3 position-absolute">
    <h3 class=" text-center">{{$categoria_empresa->nome}}</h3>
</div>
<div class="ps-5 header_nome_categoria_mostrar">
    <h2>Produtores</h2>
  </div>
</header>
<section class=" d-flex flex-wrap pt-5">
    @forelse ($empresas as $empresa)
    <div class="card_empresa d-flex align-items-center  m-3 p-4">
        <div>
        <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130" class="rounded-circle"
            alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-da-empresa.png') }}';">
        </div>
        <div class="ps-4">
            <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
            <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
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

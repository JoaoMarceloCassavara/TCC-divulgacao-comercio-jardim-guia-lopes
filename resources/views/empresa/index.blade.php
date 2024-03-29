@extends('layouts.app')

@section('conteudo')
<section class="py-5">
    <div class="text-center pb-4">
        <h4>Na Janela do Produtor, você encontra os melhores produtores locais do comércio.</h4>
    </div>
    @include('componentes.carrossel')
</section>
<div class="text-center  py-5 ">
    <h4 class="">Veja mais produtos que podem interessar a você.</h4>
</div>
    <section class=" d-flex flex-wrap pt-2 pb-5 card_empresa_section_position">
        @forelse ($empresas as $empresa)
            <div class="card_empresa d-flex align-items-center  m-1  p-4">
                <div>
                    <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130" class="rounded-circle"
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
    </section>
@endsection

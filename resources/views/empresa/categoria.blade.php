@extends('layouts.app')

@section('conteudo')

<section class=" d-flex flex-wrap py-5">
    @forelse ($empresas as $empresa)
            <div class="card_empresa d-flex p-4 m-2 ">
                <img src="{{ Voyager::image($empresa->logo) }}"height="160" width="160" class="rounded-circle" alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/exemplos/4.jpg') }}';">
                <div class="col-md-8 ">
                    <h5 class="text-white text-center nome_empresa py-2">{{ $empresa->nome }}</h5>
                    <h6 class=" text-white ps-5">{{ $empresa?->categoria?->nome }}</h6>
                    <p class=" text-white ps-5">11km</p>
                    <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov m-3"
                        href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                    </a>
                </div>
            </div>
    @empty
    <p class="alert alert-success">Nenhuma empresa cadastrada</p>
    @endforelse
</section>
@endsection

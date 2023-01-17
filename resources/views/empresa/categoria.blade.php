@extends('layouts.app')

@section('conteudo')

<section class=" d-flex flex-wrap py-5">
    @forelse ($empresas as $empresa)

            <div class="card-empresa p-4 m-2">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="{{ Voyager::image($empresa->logo) }}" class=" foto_empresa" alt="Logo Empresa">
                    </div>
                    <div class="col-md-8">
                        <div class="titulo_empresa">
                            <h5 class="nome_empresa text-white">{{ $empresa->nome }}</h5>
                            <h6 class="categoria_empresa text-white">{{ $empresa->categoria->nome }}</h6>
                            <p class="localizacao-empre text-white">11km</p>
                            <a type="button" class="btn btn-danger botao_conferir_produto marcacao_a_remov" href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}"><i class="fa-sharp fa-solid fa-shop"></i> Confira os produtos
                            </a>

                        </div>
                    </div>
                </div>
            </div>

    @empty
    <p class="alert alert-success">Nenhuma empresa cadastrada para essa categoria</p>
    @endforelse
</section>
@endsection

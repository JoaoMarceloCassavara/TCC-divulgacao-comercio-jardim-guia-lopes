@extends('layouts.app')

@section('conteudo')
    <section class=" d-flex index_padding">

        @forelse ($categoria_empresas as $categoria_empresa)
            <a class="m-4 marcacao_a_remov " href="{{ route('empresa.categoria', ['id' => $categoria_empresa->id]) }}">

                <div class="card-categoria-empresa ">

                    <img src="{{ Voyager::image($categoria_empresa->imagem) }}" class=" imagem-categoria-empresa" alt="Imagem da categoria">

                    <div class="card-body text-center">
                        <h5 class="card-title text-black">{{ $categoria_empresa->nome }}</h5>

                    </div>
                </div>
                </div>
            </a>
        @empty
            <p>Nenhuma Categoria Empresa cadastrado</p>
        @endforelse
    </section>
    <section class=" d-flex flex-wrap index_empresa">
        @forelse ($empresas as $empresa)
            <a class="m-2 marcacao_a_remov " href="{{ route('empresa.visualizar', ['id' => $empresa->id]) }}">
                <div class="card-empresa mb-3 ">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="{{ Voyager::image($empresa->logo) }}" class=" foto_empresa" alt="Logo Empresa">
                        </div>
                        <div class="col-md-8">
                            <div class="titulo_empresa">
                                <h5 class="nome_empresa">{{ $empresa->nome }}</h5>
                                <h6 class="categoria_empresa">{{ $categoria_empresa->nome }}</h6>
                                <p class="localizacao-empre">11km</p>

                            </div>
                        </div>
                    </div>
                </div>
            </a>
        @empty
            <p>Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
@endsection

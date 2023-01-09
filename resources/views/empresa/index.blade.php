@extends('layouts.app')

@section('conteudo')
    <header class=" d-flex index_padding">

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
        </header>
    <section class=" d-flex flex-wrap index_empresa">
        @forelse ($empresas as $empresa)

                <div class="card-empresa">
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
            <p>Nenhuma empresa cadastrada</p>
        @endforelse
    </section>
@endsection

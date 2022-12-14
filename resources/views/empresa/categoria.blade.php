@extends('layouts.app')

@section('conteudo')

<section class=" d-flex flex-wrap index_padding">
    @forelse ($empresas as $empresa)
    <a class="marcacao_a_remov" href="{{route('empresa.visualizar',['id'=>$empresa->id])}}">
<div class="card-empresa mb-3 m-2 ">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="{{Voyager::image( $empresa->logo) }}" class=" foto_empresa" alt="Logo Empresa">
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
  <p>Nenhuma empresa cadastrada para essa categoria</p>
@endforelse
</section>
@endsection

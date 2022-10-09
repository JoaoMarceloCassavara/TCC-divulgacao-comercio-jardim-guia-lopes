@extends('layouts.app')

@section('conteudo')
<section class="d-flex flex-wrap justify-content-evenly align-items-center ">


    @forelse ($empresas as $empresa)
    <div class="card">
        <img src="{{Voyager::image( $empresa->foto) }}"  class="card-img-top" alt="Imagem da Empresa">
        <div class="card-body">
            <h5  class="card-title">{{ $empresa->nome }}</h5>
            <p class="card-text">{{ $empresa->descricao }}</p>
            <a class="btn btn-primary"   href="{{route('empresa.visualizar',['id'=>$empresa->id])}}">Perfil da empresa </a>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">{{ $empresa->email }}</li>
            <li class="list-group-item">Whats: {{ $empresa->whats }}</li>
            <li class="list-group-item"> {{ $empresa->redessociais }}</li>
            <li class="list-group-item"> {{ $empresa->localizacao }}</li>
            <li class="list-group-item">{{ $empresa->tempoentrega }}</li>
            <li class="list-group-item">{{ $empresa->avaliacao }}</li>
        </ul>
    </div>
    @empty
        <p>Nenhuma empresa cadastrada</p>
@endforelse

</section>
@endsection

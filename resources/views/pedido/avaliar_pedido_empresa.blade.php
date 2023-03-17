@extends('layouts.app')

@section('conteudo')

<header class="py-4 ps-4 ">
    <h4 class="fw-bold">Avalie a empresa</h4>
</header>
 <form method="POST" action="{{route('avaliacao.empresa.salvar')}}">
 @csrf
 <input type="hidden" name="empresa_id" value="{{$empresa->id}}">

<section class="py-1">
    <div class="card_avaliacao_empresa_add p-4 d-flex rounded-3 ms-5">
        <img src="{{ Voyager::image($empresa->foto) }}"width="450"
            height="350" class="rounded-3" alt="Imagem da empresa" onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-fundo-empresa.png') }}';">
        <div class="ps-4">
            {{-- <h3>{{ $pedido->nome}}</h3> --}}

            <h4 class="fw-bold">{{$empresa->nome}}</h4>
            <div class="w-75">
            <p class="fs5 text-break">{{$empresa->descricao}}</p>
        </div>
        </div>
    </div>
    <div class="py-5 ps-4">
        <h4 class="fw-bold">Classifique a empresa</h4>

        <div class="ps-4">
            <label for="avaliacao" class="rating-label">
                <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" max="5" step="0.5" value="{{$empresa->avaliacao}}" >
            </label>
        </div>

    </div>

    <div class="py-4 ps-4">
        <h4 class="fw-bold">Descrição da avaliação</h4>

        <div class="form-floating ">
            <textarea  name="descricao" class="form-control textarea-avaliacao" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 200px; width:800px"></textarea>
            <label for="floatingTextarea2">Do que gostou da empresa? Compraria novamente os produtos dessa empresa? Alguma recomendação?</label>
        </div>
    </div>
    <hr>
    <div class="py-3 mb-3 ps-5 ">
        <button type="submit" class="btn btn-success p-2">Enviar sua avaliação</button>
    </div>
</section>
</form>
@endsection

@extends('layouts.app')

@section('conteudo')

<header class="py-4 ps-4 ">
    <h1 class="fw-bold">Avalie a empresa</h1>
</header>
 <form method="POST" action="{{route('avaliacao.empresa.salvar')}}">
 @csrf
 <input type="hidden" name="empresa_id" value="{{$empresa->id}}">

<section class="py-1">
    <div class="card_avaliacao_empresa_add p-4 d-flex rounded-3 ms-5">
        <img src="{{ Voyager::image($empresa->foto) }}"width="450"
            height="350" class="rounded-3" alt="Imagem da empresa">
        <div class="ps-4">
            {{-- <h3>{{ $pedido->nome}}</h3> --}}

            <h1 class="fw-bold">{{$empresa->nome}}</h1>
            <div class="w-75">
            <p class="fs5 text-break">{{$empresa->descricao}}</p>
        </div>
        </div>
    </div>
    <div class="py-5 ps-4">
        <h1 class="fw-bold">Classifique a empresa</h1>

        <div class="ps-4">
            <input class="rating" type="range" name="avaliacao" min="0" max="5" step="0.5">
            <fieldset class="rating">
                <input type="radio" id="star5" name="rating" value="5" /><label class="full"
                    for="star5" title="Awesome - 5 stars"></label>
                <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half"
                    for="star4half" title="Pretty good - 4.5 stars"></label>
                <input type="radio" id="star4" name="rating" value="4" /><label class="full"
                    for="star4" title="Pretty good - 4 stars"></label>
                <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half"
                    for="star3half" title="Meh - 3.5 stars"></label>
                <input type="radio" id="star3" name="rating" value="3" /><label class="full"
                    for="star3" title="Meh - 3 stars"></label>
                <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half"
                    for="star2half" title="Kinda bad - 2.5 stars"></label>
                <input type="radio" id="star2" name="rating" value="2" /><label class="full"
                    for="star2" title="Kinda bad - 2 stars"></label>
                <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half"
                    for="star1half" title="Meh - 1.5 stars"></label>
                <input type="radio" id="star1" name="rating" value="1" /><label class="full"
                    for="star1" title="Sucks big time - 1 star"></label>
                <input type="radio" id="starhalf" name="rating" value="half" /><label class="half"
                    for="starhalf" title="Sucks big time - 0.5 stars"></label>
            </fieldset>
        </div>

    </div>

    <div class="py-4 ps-4">
        <h1 class="fw-bold">Descrição da avaliação</h1>

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

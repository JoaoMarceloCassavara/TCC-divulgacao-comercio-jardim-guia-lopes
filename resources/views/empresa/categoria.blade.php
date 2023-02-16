@extends('layouts.app')

@section('conteudo')

<section class=" d-flex flex-wrap py-5">
    @forelse ($empresas as $empresa)
    <div class="card_empresa d-flex align-items-center  m-3 p-4">
        <div>
        <img src="{{ Voyager::image($empresa->logo) }}"height="130" width="130" class="rounded-circle"
            alt="Logo Empresa"onerror="this.onerror=null;this.src='{{ asset('assets/images/produto_padrao.jpg') }}';">
        </div>
        <div class="ps-4">
            <p class="text-white  fs-5 pt-4 ">{{ $empresa->nome }}</p>
            <h6 class=" text-white">{{ $empresa?->categoria?->nome }}</h6>
           <fieldset class="rating py-2">
                <input type="radio" id="star5" name="rating"
                    value="5" /><label class="full" for="star5"
                    title="Awesome - 5 stars"></label>
                <input type="radio" id="star4half" name="rating"
                    value="4 and a half" /><label class="half" for="star4half"
                    title="Pretty good - 4.5 stars"></label>
                <input type="radio" id="star4" name="rating"
                    value="4" /><label class="full" for="star4"
                    title="Pretty good - 4 stars"></label>
                <input type="radio" id="star3half" name="rating"
                    value="3 and a half" /><label class="half" for="star3half"
                    title="Meh - 3.5 stars"></label>
                <input type="radio" id="star3" name="rating"
                    value="3" /><label class="full" for="star3"
                    title="Meh - 3 stars"></label>
                <input type="radio" id="star2half" name="rating"
                    value="2 and a half" /><label class="half" for="star2half"
                    title="Kinda bad - 2.5 stars"></label>
                <input type="radio" id="star2" name="rating"
                    value="2" /><label class="full" for="star2"
                    title="Kinda bad - 2 stars"></label>
                <input type="radio" id="star1half" name="rating"
                    value="1 and a half" /><label class="half" for="star1half"
                    title="Meh - 1.5 stars"></label>
                <input type="radio" id="star1" name="rating"
                    value="1" /><label class="full" for="star1"
                    title="Sucks big time - 1 star"></label>
                <input type="radio" id="starhalf" name="rating"
                    value="half" /><label class="half" for="starhalf"
                    title="Sucks big time - 0.5 stars"></label>
            </fieldset>
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

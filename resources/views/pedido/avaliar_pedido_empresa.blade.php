@extends('layouts.app')

@section('conteudo')

<header class="py-4 ps-4 ">
    <h4 class="fw-bold">Avalie o Produtor</h4>
</header>
 <form method="POST" action="{{route('avaliacao.empresa.salvar')}}">
 @csrf
 <input type="hidden" name="empresa_id" value="{{$empresa->id}}">
 <input type="hidden" name="pedido_id" value="{{$pedido->id}}">

 <section class="py-1">
    <div class="card_avaliacao_empresa_add p-4 rounded-3">
        <div class="row">
            <div class="col-md-6 mb-4">
                <img src="{{ Voyager::image($empresa->foto) }}"width="100%" height="auto" style="max-width: 700px;  max-height: 400px;" class="rounded-3"
                    alt="Imagem da empresa"
                    onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-fundo-empresa.png') }}';">
            </div>
            <div class="col-md-6 ps-4">
                {{-- <h3>{{ $pedido->nome}}</h3> --}}
                <h4 class="fw-bold">{{$empresa->nome}}</h4>
                <div class="w-100" style="max-height: 300px; overflow-y: auto;">
                    <p class="fs-5 text-break">{!! $empresa->descricao !!}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="py-5 ps-4">
        <h4 class="fw-bold">Classifique o Produtor</h4>
        <div class="ps-4">
            <label for="avaliacao" class="rating-label">
                <div class="d-flex align-items-center">
                    <input class="rating rating--nojs" id="avaliacao" name="avaliacao" type="range" min="0" max="5"
                        step="0.5" value="0">
                    <div class="ms-3">
                        <output for="avaliacao" id="avaliacao-output"></output>
                    </div>
                </div>
            </label>
            <script>
                const avaliacaoInput = document.getElementById('avaliacao');
                const avaliacaoOutput = document.getElementById('avaliacao-output');

                avaliacaoInput.addEventListener('input', function () {
                    avaliacaoOutput.value = avaliacaoInput.value;
                });
            </script>
        </div>
        <div class="py-4 ps-4">
            <h4 class="fw-bold">Conte-nos mais sobre o que achou.</h4>
            <div class="form-floating">
                <textarea id="texto" rows="5" cols="50" maxlength="500" name="descricao"
                    class="form-control textarea-avaliacao" placeholder="Leave a comment here" id="floatingTextarea2"
                    style="height: 200px; width:100%"></textarea>
                <label for="floatingTextarea2">Do que gostou no produto? Compraria novamente? Alguma
                    recomendação?</label>
                <p><span id="contador">500</span> caracteres restantes</p>
                <script>
                    const textarea = document.getElementById("texto");
                    const contador = document.getElementById("contador");

                    textarea.addEventListener("input", () => {
                        const caracteresRestantes = 500 - textarea.value.length;
                        contador.textContent = caracteresRestantes;

                        if (caracteresRestantes < 0) {
                            textarea.value = textarea.value.substring(0, 500);
                            contador.textContent = 0;
                        }
                    });
                </script>
            </div>
        </div>
    </div>
    <hr>
    <div class="py-3 mb-3 ps-5">
        <button type="submit" class="btn btn-success p-2">Enviar sua avaliação</button>
    </div>
</section>

</form>
@endsection

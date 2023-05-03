@extends('layouts.app')

@section('conteudo')
@if ($message = Session::get('info'))
{{-- <div class="alert alert-info alert-block">
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	<strong>{{ $message }}</strong>
</div> --}}
<header class=" text-center pt-2">
<div class="d-inline-flex p-2 bd-highlight ">
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
      <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
    </symbol>
    <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
      <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
    </symbol>
    <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
      <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
    </symbol>
  </svg>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
    <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>
    <strong>{{ $message }}</strong>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
</div>
</header>
@endif
    <header class="pt-5 ps-5">
        <h4>Meus Pedidos</h4>
    </header>
    @php
        $count = $pedidos->count();
    @endphp
    @forelse ($pedidos->sortByDesc('created_at') as $pedido)
        <section class="py-3">
            <div class="card_lista_pedidos">
                <div class="d-flex justify-content-between ">
                    <div class="ps-2">
                        <p class="fw-bold fs-5 m-1">Ordem do Pedido: {{ $count }}°</p>
                    </div>
                    <div class="pe-2">
                        <p class="fw-bold fs-5 m-1">Identificação do pedido: {{ $pedido->id }}°</p>
                    </div>
                </div>
                @foreach ($pedido->produtos as $produto)
                    <div class="card_lista_pedidos_produto py-5 d-flex justify-content-around">
                        <div class="d-flex">
                            <img src="{{ Voyager::image($produto->imagem) }}"width="150" height="150" class=""
                                alt="Imagem do produto Pedido"
                                onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/foto-do-produto.png') }}';">
                            <div class="cold-m-8 ps-4">
                                <h3>{{ $produto->nome }}</h3>
                                <p>{{ $produto->empresa->nome }}</p>
                                <p>{{ $pedido->endereco_entrega }}</p>
                                <p>Pedido feito: {{ $pedido->created_at->format('d/m/Y H:i:s') }}</p>

                                @isset($pedido->data_entrega)
                                    <p>Entregue em: {{ $pedido->data_entrega }}</p>
                                @endisset
                            </div>
                        </div>
                        <div class="">
                            <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov"
                                href="{{ route('avaliarproduto', ['id' => $pedido->id, 'produto_id' => $produto->id]) }}">Avaliar
                                o produto</a>




                            <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov"
                                href="{{ route('avaliarempresa', ['id' => $pedido->id, 'empresa_id' => $pedido->empresa->id]) }}">Avaliar
                                Empresa</a>

                            <!-- Button trigger modal -->
                            <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov"
                                data-bs-toggle="modal" data-bs-target="#pedido-modal-{{ $pedido->id }}">
                                Adicionar localização
                            </a>

                            <!-- Modal -->
                            <div class="modal fade" id="pedido-modal-{{ $pedido->id }}" tabindex="-1"
                                aria-labelledby="pedido-modal-{{ $pedido->id }}Label" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content modal-produto">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="pedido-modal-{{ $pedido->id }}Label">Adicionar
                                                localização</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <form method="POST" action="{{ route('salvarLocalizacaoUsuario', $pedido->id) }}">
                                            @csrf
                                            <div class="modal-body">


                                                <div class="col-md-6 register-itens-empresario-align  py-2">
                                                    <textarea id="endereco_entrega"
                                                        placeholder="Endereço de entrega"
                                                        class="form-control register-itens-empresario @error('endereco_entrega') is-invalid @enderror"
                                                        name="endereco_entrega" value="{{ old('endereco_entrega') }}"
                                                        required autocomplete="endereco_entrega" autofocus></textarea>

                                                    @error('endereco_entrega')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>




                                            </div>
                                            <div class="modal-footer">
                                                {{-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> --}}
                                                <button type="submit"
                                                    class="botao-register-empresario btn btn-danger">Continuar</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <h6 class="d-block my-2 fw-bold">Total do pedido {{ $produto->getPreco() }} </h6>



                        </div>
                    </div>
                @endforeach

            </div>
        </section>

        @php
            $count--;
        @endphp
    @empty
        <div class="ps-4 py-3">
            <div class="alert alert-success w-25  " role="alert">
                <p class="text-center">Você não possui nenhum pedido!!</p>
            </div>
        </div>
    @endforelse




@endsection

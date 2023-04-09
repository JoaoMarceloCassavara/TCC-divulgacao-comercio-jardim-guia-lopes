@extends('layouts.app')

@section('conteudo')
@if ($message = Session::get('info'))
<div class="alert alert-info alert-block">
	{{-- <button type="button" class="close" data-dismiss="alert">×</button> --}}
	<strong>{{ $message }}</strong>
</div>
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
                                alt="Imagem do produto Pedido">
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
                                                <button type="submit" data-id="{{ $produto->id }}"
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

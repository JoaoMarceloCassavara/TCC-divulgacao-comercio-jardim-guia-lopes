@extends('layouts.app')

@section('conteudo')
<header class="pt-5 ps-5">
    <h1>Meus Pedidos</h1>
</header>
    @forelse ($produtos as $produto)
        <section class="py-3">
            <div class="card_lista_pedidos">
                <p class="fw-bold fs-5 m-1">Pedido N°{{ $produto->id }}</p>

                <div class="card_lista_pedidos_produto py-5 d-flex justify-content-around">
                    <div class="d-flex">
                        <img src="https://cdn.awsli.com.br/600x700/305/305913/produto/10002147/laranja-f4abaf7d.jpg"width="150"
                            height="150" class="" alt="Imagem do produto Pedido">
                        <div class="cold-m-8 ps-4">
                            <h3>{{ $produto->nome }}</h3>
                            <p >Vendinha de frutas do Seu Zé</p>
                            <p >Entregue em 23/01/2022 às 14:25</p>
                        </div>
                    </div>
                    <div class="">
                        <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov">Comprar novamente</a>
                        <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov">Avaliar o produto</a>
                        <a type="button" class="btn btn-danger d-block my-2 botao_conferir_produto marcacao_a_remov">Avaliar o vendedor</a>
                        <h6 class="d-block my-2 fw-bold">Total do pedido R${{ $produto->preco }} </h6>



                    </div>
                </div>
            </div>
        </section>
    @empty
        <p class="alert alert-success">Nenhum produto cadastrado</p>
    @endforelse
@endsection

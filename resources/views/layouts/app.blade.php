<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Scripts -->
    <link rel="stylesheet" href="{{ asset('/vendor/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/vendor/font-awesome/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/app.css') }}">
    @yield('assets')
</head>

<body id="page-top" class="d-flex flex-column vh-100">

    @section('menu')
        @includeIF('componentes.menu.menu')
    @show

    <main class="flex-grow-1">
        @yield('conteudo')
    </main>
    @section('secao')
        <section class="page-section">
            @yield('page-section')
        </section>
    @endsection
    @section('rodape')

        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright © {{ env('APP_NAME') }}</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Github">
                            <i class="fab fa-github"></i>
                        </a>
                    </div>
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
    @show
    @section('javascript')

    <!-- Modal -->
    <div class="modal fade" id="carrinho-modal" tabindex="-1" aria-labelledby="carrinho-modalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 carrinho-titulo-font" id="carrinho-modalLabel">Carrinho de compras</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="{{ route('carrinho') }}" method="POST">
                    @csrf
                    <div class="modal-body">

                        <table id="tabela-carrinho" class="table">

                        </table>
                        <h4 class="text-center text-success">Total: <span id="valor-total">$ 0,00</span></h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-dark">Efetuar pedido</button>

                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        var carrinho = [];

        function atualizarBotaoCarrinho() {
            $botaoCarrinho = document.querySelector("#carrinho-badge");
            if (carrinho.length > 0) {
                $botaoCarrinho.innerHTML = carrinho.length;
                if (!$botaoCarrinho.classList.contains("bg-danger")) {
                    $botaoCarrinho.classList.add("bg-danger");
                }
            } else {
                $botaoCarrinho.innerHTML = '';
                $botaoCarrinho.classList.remove("bg-danger");
            }
        }
        //class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle"

        //somando total
        function preencherTotal(carrinho) {
            var total = 0;
            for (var chave in carrinho) {
                total += parseFloat(carrinho[chave].preco);
            }
            document.getElementById("valor-total").innerHTML = formatarPreco(total);
        }

        //criando a tabela
        function preencherTabelaCarrinho(carrinho) {
            atualizarBotaoCarrinho();
            var table =
                `<thead class="descricao-pedido">
                <tr>
                  <td colspan="2">Produto</td><td>Preço</td><td>Quatidade</td><td>Ações</td>
                </tr>
            </thead>
            <tbody>

            `;
            for (var propriedade in carrinho) {
                table +=
                    `<tr class="cor-tbody">
                    <input type="hidden" name="produtos[]" value="${carrinho[propriedade].id}">
                    <td>
                        <div class="produto-pedido-modal">
                        <img src="${carrinho[propriedade].imagem}"class="modal_imagem_pedido " width="250" >

                        </div>
                    </td>

                        <td class="nome_pedido_modal">${carrinho[propriedade].nome}</td>


                    <td>${formatarPreco(carrinho[propriedade].preco)}</td>
                    <td>quantidade</td>
                    <td>
                        <button class="btn btn-default" onclick="removerItemDoCarrinho(${propriedade});"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>`;
            }
            table += '</tbody>';
            document.querySelector('#tabela-carrinho').innerHTML = table;
            preencherTotal(carrinho);
            salvarCarrinho(carrinho);
        }

        //formatando o preço
        function formatarPreco(value) {
            value = parseFloat(value).toFixed(2);
            return `R$ ${value.replace(".", ",")}`;
        }

        //adicionando os dados
        function adicionarItemNoCarrinho() {
            var elementoClicado = event.target;
            console.log(elementoClicado.dataset);
            carrinho.push(elementoClicado.dataset);
            elementoClicado.innerHTML = "Remover do carrinho";
            elementoClicado.classList.add("disabled");
            preencherTabelaCarrinho(carrinho);
        }
        //deletando os dados
        function removerItemDoCarrinho(id) {
            if (confirm("Você realmente deseja remover esse item do carrinho?")) {
                if (id === carrinho.length - 1) {
                    carrinho.pop();
                } else if (id === 0) {
                    carrinho.shift();
                } else {
                    carrinho.splice(id, 1);
                }
                preencherTabelaCarrinho(carrinho);
            }
        }

        //deletando lista
        function limparCarrinho() {
            if (confirm("Você deseja realmente apagar seu carrinho?")) {
                carrinho = [];
                preencherTabelaCarrinho(carrinho);
            }
        }

        //salvando em storage
        function salvarCarrinho(carrinho) {
            localStorage.setItem("carrinho", JSON.stringify(carrinho));
        }

        //verifica se já tem algo salvo
        function carregarCarrinho() {
            carrinho = localStorage.getItem("carrinho");
            if (carrinho) {
                carrinho = JSON.parse(carrinho);
            } else {
                carrinho = [];
            }
            preencherTabelaCarrinho(carrinho);
        }
        carregarCarrinho();
    </script>
@show

    <script src="{{ asset('/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/js/app.js') }}></script>
</body>

</html>

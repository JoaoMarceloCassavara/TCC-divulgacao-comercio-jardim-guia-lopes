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
            <div class="col-lg-4 text-lg-start d-flex">
            <div class="text-margin-footer">
                <a class="text-rodape text-white link-success" href="{{route('saiba_mais')}}">Saiba Mais</a>
                </div>
                <div class="text-margin-footer">
                <a class="text-rodape text-white link-success" href="{{route('quem_somos')}}">Quem Somos</a>
                   </div>
               <div class="text-margin-footer">
                 <a class="text-rodape text-white link-success" href="{{route('fale_conosco')}}">Fale conosco</a>
              </div>
            </div>
            <div class="col-lg-4 my-3 my-lg-0">
                {{-- <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter">
                    <i class="fab fa-twitter"></i>
                </a>
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Github">
                    <i class="fab fa-github"></i>
                </a> --}}
            </div>
            <div class="col-lg-4 text-lg-end">
                <a class="margin-icons-footer" href="">
                    <svg width="42" height="40" viewBox="0 0 42 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_264_614)">
                        <path d="M0 40L2.90353 29.7338C1.10844 26.7205 0.166757 23.308 0.176566 19.8194C0.176566 8.88783 9.358 0 20.6288 0C26.1024 0 31.2424 2.06274 35.0974 5.80799C38.9623 9.55323 41.0909 14.5342 41.081 19.8289C41.081 30.7605 31.8996 39.6483 20.619 39.6483H20.6092C17.1858 39.6483 13.8212 38.8118 10.8294 37.2338L0 40ZM11.3493 33.6502L11.9673 34.0114C14.5765 35.5133 17.5683 36.3023 20.619 36.3118H20.6288C29.9966 36.3118 37.6282 28.9259 37.6282 19.8384C37.6282 15.4373 35.8625 11.3023 32.6549 8.18441C29.4473 5.06654 25.1705 3.35551 20.6288 3.35551C11.261 3.34601 3.62941 10.7319 3.62941 19.8194C3.62941 22.9278 4.52205 25.9601 6.22886 28.5837L6.63104 29.211L4.91442 35.2852L11.3493 33.6502Z" fill="white"/>
                        <path d="M0.71582 39.306L3.52126 29.3916C1.78503 26.4923 0.872768 23.1939 0.872768 19.8288C0.882577 9.2775 9.74031 0.693848 20.6286 0.693848C25.9157 0.693848 30.8694 2.69005 34.5969 6.30221C38.3244 9.91438 40.3745 14.7243 40.3745 19.8383C40.3745 30.3897 31.507 38.9733 20.6286 38.9733H20.6187C17.313 38.9733 14.0662 38.1653 11.1823 36.6444L0.71582 39.306Z" fill="black"/>
                        <path d="M0 40L2.90353 29.7338C1.10844 26.7205 0.166757 23.308 0.176566 19.8194C0.176566 8.88783 9.358 0 20.6288 0C26.1024 0 31.2424 2.06274 35.0974 5.80799C38.9623 9.55323 41.0909 14.5342 41.081 19.8289C41.081 30.7605 31.8996 39.6483 20.619 39.6483H20.6092C17.1858 39.6483 13.8212 38.8118 10.8294 37.2338L0 40ZM11.3493 33.6502L11.9673 34.0114C14.5765 35.5133 17.5683 36.3023 20.619 36.3118H20.6288C29.9966 36.3118 37.6282 28.9259 37.6282 19.8384C37.6282 15.4373 35.8625 11.3023 32.6549 8.18441C29.4473 5.06654 25.1705 3.35551 20.6288 3.35551C11.261 3.34601 3.62941 10.7319 3.62941 19.8194C3.62941 22.9278 4.52205 25.9601 6.22886 28.5837L6.63104 29.211L4.91442 35.2852L11.3493 33.6502Z" fill="white"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M15.5181 11.5304C15.1355 10.7034 14.7333 10.6844 14.3704 10.6749C14.0761 10.6654 13.7328 10.6654 13.3895 10.6654C13.0462 10.6654 12.4968 10.789 12.026 11.2833C11.5552 11.7776 10.2407 12.9753 10.2407 15.4183C10.2407 17.8517 12.075 20.2091 12.3301 20.5418C12.5851 20.8745 15.8712 26.0361 21.0603 28.0228C25.3764 29.6768 26.2592 29.3441 27.1911 29.2586C28.1229 29.173 30.2123 28.0608 30.6439 26.9011C31.0657 25.7415 31.0657 24.7529 30.9382 24.5437C30.8107 24.3346 30.4674 24.211 29.9573 23.9639C29.4472 23.7167 26.936 22.519 26.4652 22.3479C25.9943 22.1863 25.651 22.1008 25.3175 22.5951C24.9742 23.0894 23.9933 24.2015 23.699 24.5342C23.4047 24.8669 23.1006 24.905 22.5905 24.6578C22.0805 24.4107 20.4325 23.8878 18.4805 22.1958C16.96 20.884 15.9301 19.2586 15.6358 18.7643C15.3415 18.27 15.6064 18.0038 15.8614 17.7567C16.087 17.538 16.3715 17.1768 16.6265 16.8916C16.8816 16.6065 16.9699 16.3973 17.1366 16.0646C17.3034 15.7319 17.2249 15.4468 17.0974 15.1996C16.9699 14.962 15.9693 12.5095 15.5181 11.5304Z" fill="white"/>
                        </g>
                        <defs>
                        <clipPath id="clip0_264_614">
                        <rect width="41.0811" height="40" rx="6" fill="white"/>
                        </clipPath>
                        </defs>
                        </svg>
                </a>
                <a class="margin-icons-footer" href="">
                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect width="40" height="40" rx="6" fill="black"/>
                        <path d="M27.7852 25.7812L28.6719 20H23.125V16.25C23.125 14.668 23.8984 13.125 26.3828 13.125H28.9062V8.20312C28.9062 8.20312 26.6172 7.8125 24.4297 7.8125C19.8594 7.8125 16.875 10.582 16.875 15.5938V20H11.7969V25.7812H16.875V39.7578C17.8945 39.918 18.9375 40 20 40C21.0625 40 22.1055 39.918 23.125 39.7578V25.7812H27.7852Z" fill="white"/>
                        </svg>

                </a>
                <a class="margin-icons-footer" href="">
                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M39.8879 11.7534C39.7919 9.6237 39.4478 8.16653 38.9597 6.89352C38.4476 5.58047 37.7675 4.45957 36.6553 3.35468C35.543 2.2498 34.4308 1.55324 33.1185 1.04884C31.8463 0.552442 30.39 0.216173 28.2616 0.120096C26.1251 0.0240192 25.445 0 20.0199 0C14.5868 0 13.9067 0.0240192 11.7783 0.120096C9.64985 0.216173 8.19356 0.560448 6.9213 1.04884C5.60104 1.56125 4.48082 2.24179 3.3766 3.35468C2.27238 4.46757 1.57624 5.58047 1.07214 6.89352C0.584038 8.16653 0.239969 9.6237 0.14395 11.7534C0.0479306 13.8911 0.0239258 14.5717 0.0239258 20C0.0239258 25.4364 0.0479306 26.1169 0.14395 28.2466C0.239969 30.3763 0.584038 31.8335 1.07214 33.1065C1.58424 34.4195 2.26437 35.5404 3.3766 36.6453C4.48082 37.7582 5.60104 38.4468 6.9133 38.9512C8.18556 39.4476 9.64185 39.7838 11.7703 39.8799C13.9067 39.976 14.5868 40 20.0119 40C25.445 40 26.1251 39.976 28.2536 39.8799C30.382 39.7838 31.8383 39.4396 33.1105 38.9512C34.4228 38.4388 35.543 37.7582 36.6473 36.6453C37.7515 35.5324 38.4476 34.4195 38.9517 33.1065C39.4478 31.8335 39.7839 30.3763 39.8799 28.2466C39.9759 26.1089 39.9999 25.4283 39.9999 20C39.9999 14.5717 39.9839 13.8831 39.8879 11.7534ZM36.2952 28.0865C36.2072 30.04 35.8791 31.1049 35.607 31.8014C35.247 32.7302 34.8069 33.4027 34.1027 34.1073C33.3986 34.8119 32.7345 35.2362 31.7983 35.6125C31.0941 35.8847 30.0299 36.213 28.0855 36.301C25.9811 36.3971 25.349 36.4211 20.0039 36.4211C14.6589 36.4211 14.0267 36.3971 11.9223 36.301C9.96991 36.213 8.9057 35.8847 8.20956 35.6125C7.28138 35.2522 6.60924 34.8119 5.9051 34.1073C5.20096 33.4027 4.77688 32.7382 4.4008 31.8014C4.12875 31.0969 3.80068 30.032 3.71266 28.0865C3.61664 25.9808 3.59264 25.3483 3.59264 20C3.59264 14.6517 3.61664 14.0192 3.71266 11.9135C3.80068 9.95997 4.12875 8.89512 4.4008 8.19856C4.76087 7.26982 5.20096 6.59728 5.9051 5.89271C6.60924 5.18815 7.27338 4.76381 8.20956 4.38751C8.9137 4.11529 9.97792 3.78703 11.9223 3.69896C14.0267 3.60288 14.6589 3.57886 20.0039 3.57886C25.349 3.57886 25.9811 3.60288 28.0855 3.69896C30.0379 3.78703 31.1021 4.11529 31.7983 4.38751C32.7265 4.7478 33.3986 5.18815 34.1027 5.89271C34.8069 6.59728 35.231 7.26181 35.607 8.19856C35.8791 8.90312 36.2072 9.96798 36.2952 11.9135C36.3912 14.0192 36.4152 14.6517 36.4152 20C36.4152 25.3483 36.3832 25.9808 36.2952 28.0865Z" fill="black"/>
                        <path d="M20.004 9.71973C14.3229 9.71973 9.72998 14.3234 9.72998 20C9.72998 25.6845 14.3309 30.2802 20.004 30.2802C25.6772 30.2802 30.2781 25.6685 30.2781 20C30.2781 14.3154 25.6852 9.71973 20.004 9.71973ZM20.004 26.6693C16.3233 26.6693 13.3387 23.6829 13.3387 20C13.3387 16.317 16.3233 13.3306 20.004 13.3306C23.6848 13.3306 26.6694 16.317 26.6694 20C26.6694 23.6829 23.6848 26.6693 20.004 26.6693Z" fill="black"/>
                        <path d="M30.6783 11.7213C32.0041 11.7213 33.0788 10.6459 33.0788 9.3194C33.0788 7.99286 32.0041 6.91748 30.6783 6.91748C29.3526 6.91748 28.2778 7.99286 28.2778 9.3194C28.2778 10.6459 29.3526 11.7213 30.6783 11.7213Z" fill="black"/>
                        <path d="M0 20C0 25.4364 0.0240048 26.1169 0.120024 28.2466C0.216043 30.3763 0.560112 31.8335 1.04821 33.1065C1.56031 34.4195 2.24045 35.5404 3.35267 36.6453C4.45689 37.7502 5.57712 38.4468 6.88938 38.9512C8.16163 39.4476 9.61792 39.7838 11.7464 39.8799C13.8828 39.976 14.5629 40 19.988 40C25.4211 40 26.1012 39.976 28.2296 39.8799C30.3581 39.7838 31.8144 39.4396 33.0866 38.9512C34.3989 38.4388 35.5191 37.7582 36.6233 36.6453C37.7276 35.5404 38.4237 34.4195 38.9278 33.1065C39.4239 31.8335 39.76 30.3763 39.856 28.2466C39.952 26.1089 39.976 25.4283 39.976 20C39.976 14.5637 39.952 13.8831 39.856 11.7534C39.76 9.6237 39.4159 8.16653 38.9278 6.89352C38.4157 5.58047 37.7355 4.45957 36.6233 3.35468C35.5271 2.24179 34.4069 1.55324 33.0946 1.04884C31.8224 0.552442 30.3661 0.216173 28.2376 0.120096C26.1012 0.0240192 25.4211 0 19.996 0C14.5629 0 13.8828 0.0240192 11.7544 0.120096C9.62593 0.216173 8.16963 0.560448 6.89738 1.04884C5.58512 1.56125 4.46489 2.24179 3.36067 3.35468C2.25645 4.46757 1.56031 5.58047 1.05621 6.89352C0.560112 8.16653 0.216043 9.6237 0.120024 11.7534C0.0240048 13.8831 0 14.5637 0 20ZM3.60872 20C3.60872 14.6597 3.63273 14.0192 3.72875 11.9135C3.81676 9.95997 4.14483 8.89512 4.41688 8.19856C4.77696 7.26982 5.21704 6.59728 5.92118 5.89271C6.62533 5.18815 7.28946 4.76381 8.22565 4.38751C8.92979 4.11529 9.994 3.78703 11.9384 3.69896C14.0428 3.60288 14.6749 3.57886 20.02 3.57886C25.3651 3.57886 25.9972 3.60288 28.1016 3.69896C30.054 3.78703 31.1182 4.11529 31.8144 4.38751C32.7425 4.7478 33.4147 5.18815 34.1188 5.89271C34.823 6.59728 35.2471 7.26181 35.6231 8.19856C35.8952 8.90312 36.2232 9.96798 36.3113 11.9135C36.4073 14.0192 36.4313 14.6517 36.4313 20C36.4313 25.3483 36.4073 25.9808 36.3113 28.0865C36.2232 30.04 35.8952 31.1049 35.6231 31.8014C35.2631 32.7302 34.823 33.4027 34.1188 34.1073C33.4147 34.8119 32.7506 35.2362 31.8144 35.6125C31.1102 35.8847 30.046 36.213 28.1016 36.301C25.9972 36.3971 25.3651 36.4211 20.02 36.4211C14.6749 36.4211 14.0428 36.3971 11.9384 36.301C9.986 36.213 8.92179 35.8847 8.22565 35.6125C7.29746 35.2522 6.62533 34.8119 5.92118 34.1073C5.21704 33.4027 4.79296 32.7382 4.41688 31.8014C4.14483 31.0969 3.81676 30.032 3.72875 28.0865C3.62473 25.9808 3.60872 25.3403 3.60872 20Z" fill="black"/>
                        </svg>

                </a>
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

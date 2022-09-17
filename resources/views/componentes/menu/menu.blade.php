<nav class="navbar navbar-expand-lg navbar-white ">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Site de divulgação</a>


        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  justify-content-between" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">


                <li class="nav-item dropdown">
                    <a style='color:white'class="nav-link dropdown-toggle" href="#" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Menu do site
                    </a>
                    <ul class="dropdown-menu">
                        <li><a style='color:black'class="dropdown-item" href="{{route('empresa')}}">Empresa</a></li>
                        <li><a style='color:black'class="dropdown-item" href="{{route('produto')}}">Produtos</a></li>
                        <li>
                            <hr style='color:black' class="dropdown-divider">
                        </li>

                    </ul>
                </li>

            </ul>
            <form class="d-flex">
                <input class="form-control me-2 menu-pesquisa" type="pesquisa" placeholder="Pesquisa" aria-label="Pesquisa">




                {{-- <a  class="btn btn-outline-success" type="submit">Pesquisa</a> --}}
            </form>
            <a type="button" class="btn btn-dark icone-carrinho-compras mx-5" href="#">
                <svg style="margin-left: -8px" width="41" height="41" viewBox="0 0 41 41" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <g style="mix-blend-mode:color-burn" clip-path="url(#clip0_36_20)">
                        <rect width="41" height="41" fill="white" />
                        <path
                            d="M10.25 35.875C12.137 35.875 13.6667 34.3453 13.6667 32.4583C13.6667 30.5714 12.137 29.0417 10.25 29.0417C8.36304 29.0417 6.83334 30.5714 6.83334 32.4583C6.83334 34.3453 8.36304 35.875 10.25 35.875Z"
                            stroke="#101010" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M29.0417 35.875C30.9286 35.875 32.4583 34.3453 32.4583 32.4583C32.4583 30.5714 30.9286 29.0417 29.0417 29.0417C27.1547 29.0417 25.625 30.5714 25.625 32.4583C25.625 34.3453 27.1547 35.875 29.0417 35.875Z"
                            stroke="#101010" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        <path d="M29.0417 29.0417H10.25V5.125H6.83334" stroke="#101010" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" />
                        <path d="M10.25 8.54167L34.1667 10.25L32.4583 22.2083H10.25" stroke="#101010" stroke-width="2"
                            stroke-linecap="round" stroke-linejoin="round" />
                    </g>
                    <defs>
                        <clipPath id="clip0_36_20">
                            <rect width="41" height="41" fill="white" />
                        </clipPath>
                    </defs>
                </svg>
            </a>

            <a type="button" class="btn btn-dark" href="#">Login</a>
        </div>
    </div>
</nav>

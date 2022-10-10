<nav class="navbar navbar-expand-lg navbar-white ">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#">Site de divulgação</a>


        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  justify-content-between" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">


                <li class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle text-white" href="#" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Menu do site
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{route('empresa')}}">Empresa</a></li>
                        <li><a class="dropdown-item" href="{{route('produto')}}">Produtos</a></li>
                        <li>
                            <hr  class="dropdown-divider">
                        </li>

                    </ul>
                </li>

            </ul>
            <form class="d-flex">
                <input class="form-control me-2 menu-pesquisa" type="pesquisa" placeholder="Pesquisa" aria-label="Pesquisa">




                {{-- <a  class="btn btn-outline-success" type="submit">Pesquisa</a> --}}
            </form>
            <a href="#" class="link-primary text-white ">Criar Conta</a>

            <a type="button" class="btn btn-dark login" href="#">Login</a>
        </div>
    </div>
</nav>

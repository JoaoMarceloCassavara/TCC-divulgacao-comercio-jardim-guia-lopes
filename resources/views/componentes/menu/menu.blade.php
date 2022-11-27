<nav class="navbar navbar-expand-lg navbar-white sticky-top">
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



                <input class="form-control me-2 menu-pesquisa" type="pesquisa" placeholder="Pesquisa" aria-label="Pesquisa"></form>

                   <div class="carrinho">
                    <a id="carrinho" class="nav-link  position-relative"
                    data-bs-toggle="modal" data-bs-target="#carrinho-modal">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span id="carrinho-badge" class="position-absolute top-0 start-100 translate-middle badge rounded-pill"></span>
                    </a>
                   </div>
                   @guest


            <a href="{{route('auth.tipo_register')}}" class="link-criar-conta text-white ">Criar Conta</a>

            <a type="button" class="btn btn-dark login" href="{{route('login')}}">Login</a>

            @else

            <span class="nav-item dropdown">
                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }}
                </a>

                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('home') }}"> Dashboard </a>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                           document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
            </span>

        @endguest

        </div>
    </div>
</nav>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{route('welcome')}}">
            <img src="/assets/images/logo_do_site/janela_do_produtor.png" alt="" width="90" height="64" class="rounded-3">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse  justify-content-between" id="navbarSupportedContent">
          <ul class="navbar-nav">
              <li class="nav-item ">
                  <a class="nav-link active text-white link-success" aria-current="page" href="{{route('welcome')}}">Inicio</a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link active text-white link-success" aria-current="page" href="{{route('produto')}}">Produtos</a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link active text-white link-success" aria-current="page" href="{{route('empresa')}}">Produtores</a>
                </li>
          </ul>
          <form id="form-buscar" action="{{route ('filtro')}}" class="d-flex">
              <input class="form-control me-2 menu-pesquisa login-itens " type="search" placeholder="Pesquisa" aria-label="Search" name="filtro" value="{{request()->filtro}}">
              <button class="btn btn-outline-success" type="submit">
                  <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
              </button>
          </form>

          <div class="d-flex align-items-center">

          @guest
          <a type="button" class="btn btn-danger text-white text-center botao-login-menu p-2 rounded-3 fw-bold " href="{{route('login')}}">Login</a>
          @else

              <span class="nav-item dropdown">
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                      data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      {{ Auth::user()->name }}
                  </a>

                  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="{{ route('voyager.dashboard') }}">Painel</a>
                      <a class="dropdown-item" href="{{ route('listaPedido') }}">Meus Pedidos</a>
                      <a class="dropdown-item" href="{{ route('logout') }}"
                          onclick="event.preventDefault();
                          document.getElementById('logout-form').submit();">
                          <i class="fa-solid fa-arrow-right-from-bracket"></i> Sair
                      </a>

                      <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                          @csrf
                      </form>
                  </div>
              </span>
          @endguest
          <div class="carrinho mx-3">
              <a id="carrinho" class="nav-link  position-relative"
                  data-bs-toggle="modal" data-bs-target="#carrinho-modal">
                  <i class="fa-solid fa-cart-shopping"></i>
                  <span id="carrinho-badge" class="position-absolute top-0 start-100 translate-middle badge rounded-pill"></span>
              </a>
          </div>
          </div>

      </div>
    </div>
  </nav>

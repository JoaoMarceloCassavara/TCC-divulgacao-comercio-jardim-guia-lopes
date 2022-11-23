@extends('layouts.app')

@section('conteudo')

<div class="body-tipo-register ">
<section class=" index_padding">
<div class="tipo-register shadow p-3 mb-5 bg-body rounded">

<section class="d-flex index_padding">
<div class="position-absolute top-50 start-50">
<a class="btn btn-dark botao-pedir" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
   <h1 class="text-pedir">Deseja Pedir</h1>
  </a>
</div>

<div class="ou_tipo_register">
<h6 class="ou_tipo_register_text">
    OU
</h6>

</div>
</section>




<section class="d-flex index_padding">
    <div class="position-absolute bottom-50 end-50">
    <a class="btn btn-dark botao-pedir" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
       <h1 class="text-pedir">Deseja Vender?</h1>
      </a>
    </div>
    </section>

</div>
</section>
</div>
@endsection

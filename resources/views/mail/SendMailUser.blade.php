@component('mail::message')


<h1>Notificações novas </h1>
@component('mail::button', ['url' =>'http://localhost:8000/empresa/7'] )
  Confira os novos Produtos
@endcomponent
<p>Notificações para o usuario {{$user->name}} do site janela do produtor</p>
<p>joao paulo bobo </p>

@endcomponent

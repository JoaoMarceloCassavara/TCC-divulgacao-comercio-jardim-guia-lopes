@component('mail::message')


<h1>Notificações novas </h1>
@component('mail::button', ['url' =>'http://localhost:8000/empresa/7'] )
  Acesse o painel adm para confirmar
@endcomponent
<p>empresa {{$empresa->nome}} cadstrado</p>
<p>joao paulo bobo </p>

@endcomponent

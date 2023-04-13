@component('mail::message')


<h1 style="  text-align: center; ">Um novo produtor acaba de se cadastrar</h1>

<div style="display: flex; padding-top:40px; padding-bottom:40px;">
    <div style="background-color: #83A603;  border-radius: 10px; padding:10px">
{{-- <img style=" border-radius: 10px;" src="{{ Voyager::image($empresa->foto) }}"width="170" height="150" alt="Imagem da Empresa"
onerror="this.onerror=null;this.src='{{ asset('assets/images/imagens-default/imagem-fundo-empresa.png') }}';"> --}}
</div>
<div style="padding-left: 15px">
<h2>{{$empresa->nome}}</h2>
<p>Cidade da Empresa: {{$empresa?->cidade?->nome}}</p>

</div>
</div>
<div style="padding-left:12px; padding-bottom:10px">
    <p>Nome do Usuario: {{$empresa->user->name}}</p>
    <p>Indentificação do produtor Cpf: {{$empresa->cpf}}</p>
    <p>Indentificação do negocio Cnpj: {{$empresa->cnpj}}</p>
    <p>Indentificação do produtor Telefone: {{$empresa->telefone}}</p>

</div>
@component('mail::button', ['url' =>'http://localhost:8000/admin/empresas/'. $empresa->id] )
     Acesse o painel administrativo para mais informações
     @endcomponent
@endcomponent

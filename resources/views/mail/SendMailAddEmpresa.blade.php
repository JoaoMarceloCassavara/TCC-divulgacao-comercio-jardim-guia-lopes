@component('mail::message')


<style>
    /* Adicione estilos aqui */
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        color: #333;
        padding: 20px;
    }

    .container {
        max-width: 600px;
        margin: 0 auto;
        text-align: center;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        padding: 30px;
    }

    h1 {
        margin-top: 0;
        font-size: 36px;
    }

    p {
        font-size: 18px;
        line-height: 1.5;
        margin-bottom: 20px;
    }

    button {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    button:hover {
        background-color: #3e8e41;
    }
</style>
<div class="container">
    <h1>Sua empresa está sendo monitorada</h1>
    <p>Olá {{ $empresa->user->name }}, sua empresa {{ $empresa->nome }} foi cadastrada com sucesso e está sendo monitorada.</p>
    <p>Você pode acessar a plataforma para verificar o status de sua empresa a qualquer momento.</p>
    @component('mail::button', ['url' => env('APP_URL').'/admin/empresas/' . $empresa->id])
    
Clique aqui para visualizar os pedidos
@endcomponent
</div>

@endcomponent

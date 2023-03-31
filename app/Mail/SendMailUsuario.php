<?php

namespace App\Mail;

use App\Models\Pedido;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMailUsuario extends Mailable
{
    use Queueable, SerializesModels;

    private $pedidos;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($pedidos)
    {
        $this->pedidos = $pedidos;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $this->subject('Janela do Produtor');
        $this->to($this->pedidos[0]->user->email, $this->pedidos[0]->user->name);
        // return $this->view( 'mail.SendMailpedido', [
        //     'pedido'=> $this->pedido
        return $this->markdown('mail.SendMailUsuario', [
            'pedidos'=> $this->pedidos
        ]);
    }
}

<?php

namespace App\Mail;

use App\Models\Pedido;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMailPedido extends Mailable
{
    use Queueable, SerializesModels;

    private $pedido;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($pedido)
    {
        $this->pedido = $pedido;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $empresa = $this->pedido->empresa()->first();
        $user = User::find($empresa->user_id);

        $atendentes = User::with(['roles' => function ($q) {
            $q->where('name', 'atendente');
        }])->get();
        $bccEmails = [];
        foreach ($atendentes as $atendente) {
            $bccEmails[] = $atendente->email;
        }
        $this->subject('Janela do Produtor');
        $this->to($user->email, $user->name)
            ->bcc($bccEmails);

        // return $this->view( 'mail.SendMailpedido', [
        //     'pedido'=> $this->pedido
        return $this->markdown('mail.SendMailpedido', [
            'pedido' => $this->pedido
        ]);
    }
}

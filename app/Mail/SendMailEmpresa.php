<?php

namespace App\Mail;

use App\Models\Pedido;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMailEmpresa extends Mailable
{
    use Queueable, SerializesModels;

    private $empresa;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($empresa)
    {
        $this->empresa = $empresa;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $user = User::with(['roles' => function($q){
            $q->where('name', 'admin');
        }])->first();
        $this->subject('Janela do Produtor');
        $this->to($user->email, $user->name);
        // return $this->view( 'mail.SendMailpedido', [
        //     'empresa'=> $this->empresa
        return $this->markdown('mail.SendMailEmpresa', [
            'empresa'=> $this->empresa
        ]);
    }
}

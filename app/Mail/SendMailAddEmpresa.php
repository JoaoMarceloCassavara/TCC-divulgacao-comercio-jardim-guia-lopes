<?php

namespace App\Mail;


use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMailAddEmpresa extends Mailable
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

        $this->subject('Janela do Produtor');
        $this->to($this->empresa->user->email, $this->empresa->user->name);
        return $this->markdown('mail.SendMailAddEmpresa', [
            'empresa'=> $this->empresa
        ]);
    }
}

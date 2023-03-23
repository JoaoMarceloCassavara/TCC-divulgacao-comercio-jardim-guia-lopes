<?php

namespace App\Mail;

// use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMailUser extends Mailable
{
    use Queueable, SerializesModels;

    private $user;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(\stdClass $user)
    {
        $this->user = $user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $this->subject('Janela do Produtor');
        $this->to($this->user->email, $this->user->name);
        // return $this->view( 'mail.SendMailUser', [
        //     'user'=> $this->user
        return $this->markdown('mail.SendMailUser', [
            'user'=> $this->user
        ]);
    }
}

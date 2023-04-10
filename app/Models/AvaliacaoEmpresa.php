<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;


class AvaliacaoEmpresa extends Model
{
    protected $fillable = [
        'empresa_id',
        'avaliacao',
        'descricao',
        'user_id',
        'pedido_id',
    ];

    public function save(array $options = [])
    {
        // If no author has been assigned, assign the current user's id as the author of the post
        if (!$this->user_id && Auth::user()) {
            $this->user_id = Auth::user()->getKey();
        }
        return parent::save();
    }

    public function scopeUsuario($query)
    {
        $user = Auth::user();
        if ($user->hasRole('admin')) {
            return $query;
        }
        if ($user->hasRole('atendente')) {
            return $query;
        }
        return $query->where('user_id', $user->getKey());
    }



     public function empresa()
     {
         return $this->belongsTo(Empresa::class,'empresa_id', 'id');
     }

     public function usuario()
     {
         return $this->belongsTo(User::class,'user_id', 'id');
     }
     public function pedido()
     {
         return $this->belongsTo(Pedido::class,'pedido_id', 'id');
     }

}

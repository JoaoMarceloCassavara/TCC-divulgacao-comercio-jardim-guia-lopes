<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Cidade extends Model
{
    public function estado()
    {
        return $this->belongsTo(Estado::class,'estado_id', 'id');
    }

    public function usuario_cidades()
    {
        return $this->hasMany(User::class,'cidade_id','id');
    }
}

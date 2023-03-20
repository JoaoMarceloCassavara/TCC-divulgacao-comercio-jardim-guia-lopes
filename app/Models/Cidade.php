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

    public function empresas()
    {
        return $this->hasMany(Empresa::class,'cidade_id','id');
    }
    public function produtos()
    {
        return $this->hasMany(Produto::class,'cidade_id','id');
    }

}

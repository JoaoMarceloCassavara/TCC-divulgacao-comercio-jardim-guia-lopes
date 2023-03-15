<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Estado extends Model
{
    public function cidades()
    {
        return $this->hasMany(Cidade::class,'cidade_id','id');
    }
}

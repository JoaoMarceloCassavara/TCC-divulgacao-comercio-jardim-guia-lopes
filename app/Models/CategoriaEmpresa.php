<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class CategoriaEmpresa extends Model
{
    public function empresas()
    {
        return $this->hasMany(Empresa::class,'categoria_empresa_id','id');
    }
}

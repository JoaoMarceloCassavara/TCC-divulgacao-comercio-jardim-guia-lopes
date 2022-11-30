<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class CategoriaProduto extends Model
{

    public function produtos()
    {
        return $this->hasMany(Produto::class,'categoria_produto_id','id');
    }

}

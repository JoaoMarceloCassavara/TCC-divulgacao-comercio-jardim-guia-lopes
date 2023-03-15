<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;


class ProdutoDestaque extends Model
{
    public function produto()
    {
        return $this->belongsTo(Produto::class, 'produto_id', 'id');
    }
}

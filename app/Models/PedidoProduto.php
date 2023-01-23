<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class PedidoProduto extends Model
{
     //belogto produto
     //belgongto pedido

     public function produto()
     {
         return $this->belongsTo(Produto::class,'produto_id', 'id');
     }

     public function pedido()
     {
         return $this->belongsTo(Pedido::class,'user_id', 'id');
     }
}

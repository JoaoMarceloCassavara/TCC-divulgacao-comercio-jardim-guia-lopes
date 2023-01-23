<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Pedido extends Model
{
    // belong to empresa empresa_id
    // belong to usuario user_id
    //belongtomany pedido produto

    public function empresa()
    {
        return $this->belongsTo(Empresa::class, 'empresa_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
    public function pedidoProduto()
    {
        return $this->belongsToMany(PedidoProduto::class, 'produto_id', 'pedido_id');
    }

    /**
     * O Pedidos que pertencem a esse produto
     */
    public function produtos()
    {
        return $this->belongsToMany(Produto::class, 'pedido_produtos', 'pedido_id', 'produto_id')
            //->withPivot('avaliacao','quantidade')
        ;
    }
}

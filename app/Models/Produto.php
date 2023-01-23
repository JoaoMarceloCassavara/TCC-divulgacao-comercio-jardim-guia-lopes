<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Produto extends Model
{
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
        return $query->where('user_id', $user->getKey());
    }

    public function categoria()
    {
        return $this->belongsTo(CategoriaProduto::class, 'categoria_produto_id', 'id');
    }

    public function empresa()
    {
        return $this->belongsTo(Empresa::class, 'empresa_id', 'id');
    }

    public function avaliacoes()
    {
        return $this->hasMany(AvaliacoesProduto::class, 'produto_id', 'id');
    }

    public function pedidos()
    {
        return $this->belongsToMany(Pedido::class, 'pedido_produtos', 'produto_id', 'pedido_id')
            //->withPivot('avaliacao','quantidade')
        ;
    }

    // obter preco formatado em reais formatados 
    public function getPreco()
    {
        return 'R$ ' . number_format($this->preco, 2, ',', '.');
    }
}

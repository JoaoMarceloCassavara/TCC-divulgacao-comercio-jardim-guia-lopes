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
        if (!$this->empresa_id && Auth::user()) {
            $this->empresa_id = Empresa::where('user_id', $this->user_id)->first()->id;
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


    public function scopeEmpresa($query)
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
    
    protected $fillable = ['video_curto'];

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

    public function destaques()
    {
        return $this->hasMany(ProdutoDestaque::class,'produto_id','id');
    }
    public function cidade()
    {
        return $this->belongsTo(Cidade::class, 'cidade_id', 'id');
    }

}

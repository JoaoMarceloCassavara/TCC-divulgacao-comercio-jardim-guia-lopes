<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Empresa extends Model
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
        if ($user->hasRole('atendente')) {
            return $query;
        }
        return $query->where('user_id', $user->getKey());
    }

    public function scopeProduto($query)
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

    public function scopeAvaliacaoEmpresa($query)
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
/**
     * mapear relacionamento tem-um/pertence-a-um
     * usando Voyager
     */
    public function categoria()
    {
        return $this->belongsTo(CategoriaEmpresa::class,'categoria_empresa_id', 'id');
    }
    public function usuario()
    {
        return $this->belongsTo(User::class,'user_id', 'id');
    }


     /**
     * Relacionamento Um para Muitos (tem muitos)
     */
    public function produtos()
    {
        return $this->hasMany(Produto::class,'empresa_id','id')->orderBy('categoria_produto_id', 'ASC');
    }

    public function avaliacoes() // avaliacao empresa de muitos para muitos
    {
        return $this->hasMany(AvaliacaoEmpresa::class,'empresa_id','id');
    }

    public function destaques()
    {
        return $this->hasMany(EmpresaDestaque::class,'empresa_id','id');
    }

    public function cidade()
    {
        return $this->belongsTo(Cidade::class,'cidade_id', 'id');
    }
    public function user()
    {
        return $this->belongsTo(User::class,'user_id', 'id');
    }



}

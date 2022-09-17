<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class Postagem extends \TCG\Voyager\Models\Post
{
    protected $table = 'posts';
    /**
     * Estado.
     */
    public const PUBLICADO = 'PUBLISHED';

    /**
     * escopo da query para só incluir páginas ativas.
     */
    public function scopePublicado(Builder $query)
    {
        return $query->where('status', '=', static::PUBLICADO);
    }

    public function save(array $options = [])
    {
        // Se nenhum autor tiver sido atribuído, atribua o id do usuário atual como autor do post
        if (!$this->author_id && Auth::user()) {
            $this->author_id = Auth::user()->getKey();
        }

        return parent::save();
    }

    /**
     * Relacionamento pertence a (Muitos para Um)
     * usando Laravel
     */
    public function autor()
    {
        return $this->belongsTo(User::class, 'author_id', 'id');
    }

    /**
     * mapear relacionamento tem-um/pertence-a-um
     * usando Voyager
     */
    public function categoria()
    {
        return $this->belongsTo(Category::class,'category_id', 'id');
    }
}

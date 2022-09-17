<?php

namespace App\Models;

class Category extends \TCG\Voyager\Models\Category
{
    /**
     * Relacionamento Um para Muitos (tem muitos)
     */
    public function postagens()
    {
        return $this->hasMany(Postagem::class,'category_id','id')->orderBy('created_at', 'DESC');
    }
}

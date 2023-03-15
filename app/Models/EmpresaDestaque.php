<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class EmpresaDestaque extends Model
{
    public function produto()
    {
        return $this->belongsTo(Empresa::class, 'empresa_id', 'id');
    }
}

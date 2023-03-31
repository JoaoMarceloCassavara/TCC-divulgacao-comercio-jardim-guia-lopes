<?php

namespace App\Models;

use Illuminate\Support\Facades\Auth;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends \TCG\Voyager\Models\User //implements MustVerifyEmail
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function scopeProdutor($query)
    {
        $user = Auth::user();
        if ($user->hasRole('admin')) {
            return $query;
        }
        if ($user->hasRole('atendente')) {
            return $query;
        }
        return $query->where('id', $user->getKey());
    }

    /**
     * Relacionamento Muitos para muitos
     * The roles que pertencem ao usuario.
     */
    public function rolesExtras()
    {
        return $this->belongsToMany(Role::class, 'user_roles', 'user_id', 'role_id');
    }

    /**
     * The roles que pertencem ao usuario.
     */
    public function role()
    {
        return $this->belongsTo(Role::class, 'role_id', 'id');
    }

    public function cidade()
    {
        return $this->belongsTo(Cidade::class, 'cidade_id', 'id');
    }

    public function empresas()
    {
        return $this->hasMany(Empresa::class,'user_id','id');
    }
}

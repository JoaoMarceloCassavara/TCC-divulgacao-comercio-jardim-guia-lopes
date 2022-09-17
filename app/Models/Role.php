<?php

namespace App\Models;

use TCG\Voyager\Facades\Voyager;


class Role extends \TCG\Voyager\Models\Role
{
    public function usuarios()
    {
        $userModel = Voyager::modelClass('User');

        return $this->belongsToMany($userModel, 'user_roles')
                    ->select(app($userModel)->getTable().'.*')
                    ->union($this->hasMany($userModel))->getQuery();
    }

    public function permissoes()
    {
        return $this->belongsToMany(Voyager::modelClass('Permission'));
    }
}

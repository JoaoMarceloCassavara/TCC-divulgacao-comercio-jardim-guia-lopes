<?php

namespace App\Policies;

use TCG\Voyager\Contracts\User;
use Illuminate\Auth\Access\HandlesAuthorization;
use TCG\Voyager\Policies\BasePolicy;

class EmpresaPolicy extends BasePolicy
{
		public function ativar(User $user, $model)
    {
        // Does this post belong to the current user?
        $current = $user->id === $model->author_id;

        return $current || $this->checkPermission($user, $model, 'ativar');
    }
}

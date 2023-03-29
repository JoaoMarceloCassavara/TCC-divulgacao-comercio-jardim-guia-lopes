<?php

namespace App\Actions\Voyager;

use TCG\Voyager\Actions\AbstractAction;

class AtivarEmpresaAction extends AbstractAction
{
    public function getTitle()
    {
        return 'Ativar/Desativar';
    }

    public function getIcon()
    {
        return 'voyager-check';
    }

    public function getPolicy()
    {
        return 'ativar';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-success pull-right',
        ];
    }

    public function getDefaultRoute()
    {
        return route('empresas.ativar',['id'=>$this->data->id]);
    }

		/**
     * Se Você só quer mostrar sua ação para telas especificas:
     */
    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'empresas';
    }
		/*/para ações em massa:
    public function massAction($ids, $comingFrom)
    {
        // Do something with the IDs
        //dd($ids);
        return redirect($comingFrom);
    }//*/
}

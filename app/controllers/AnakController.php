<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class AnakController extends Controller
{
	public function anakAction()
	{
		$anak = Anak::find();
		$this->view->dataAnak = $anak;
    }
    
};

?>
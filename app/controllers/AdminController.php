<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class AdminController extends Controller
{
	public function adminAction()
	{
		
    }
    
    public function editAnakAction()
	{
		$anak = Anak::find();
		$this->view->dataAnak = $anak;
	}
};

?>
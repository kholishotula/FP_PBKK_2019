<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class KegiatanController extends Controller
{
	public function kegiatanAction()
	{
		$kegiatan = Kegiatan::find();
		$this->view->dataKegiatan = $kegiatan;
	}
};

?>
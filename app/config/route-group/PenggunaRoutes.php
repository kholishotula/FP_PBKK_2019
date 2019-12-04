<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class PenggunaRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'pengguna',

		]);

		$this->addGet(
			'/daftar',
			[
				'action' => 'daftar',
			]
        );

        $this->addPost(
			'/daftar',
			[
				'action' => 'daftarBaru',
			]
        );

        $this->addGet(
			'/masuk',
			[
				'action' => 'masuk',
			]
        );

        $this->addPost(
			'/masuk',
			[
				'action' => 'cekMasuk',
			]
        );
	}
}

?>
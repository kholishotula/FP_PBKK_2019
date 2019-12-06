<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class AdminRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'admin',

		]);

		$this->addGet(
			'/editAnak',
			[
				'action' => 'editAnak',
			]
		);

		$this->addPost(
			'/tambahAnak',
			[
				'action' => 'tambahAnak',
			]
		);

		$this->addGet(
			'/ubahAnak',
			[
				'action' => 'ubahAnak',
			]
		);

		$this->addPost(
			'/ubahAnak/{id_anak}',
			[
				'action' => 'ubahAnaknya',
			]
		);

		$this->addGet(
			'/hapusAnak',
			[
				'action' => 'hapusAnak',
			]
		);
		
		$this->addGet(
			'/editDonasi',
			[
				'action' => 'editDonasi',
			]
		);

		$this->addPost(
			'/tambahDonasi',
			[
				'action' => 'tambahDonasi',
			]
		);
		
		$this->addGet(
			'/hapusDonasi',
			[
				'action' => 'hapusDonasi',
			]
		);

		$this->addGet(
			'/lihatDonatur',
			[
				'action' => 'lihatDonatur',
			]
		);
	}
}

?>
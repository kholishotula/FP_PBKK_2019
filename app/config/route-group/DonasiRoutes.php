<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class DonasiRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'donasi',

		]);

		$this->addGet(
			'/donasi',
			[
				'action' => 'donasi',
			]
        );

        $this->addGet(
			'/konfirmasi',
			[
				'action' => 'konfirmasi',
			]
		);
		
		$this->addPost(
			'/konfirmasi',
			[
				'action' => 'konfirm',
			]
        );
	}
}

?>
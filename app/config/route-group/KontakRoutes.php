<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class KontakRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'kontak',

		]);

		$this->addGet(
			'/kontak',
			[
				'action' => 'kontak',
			]
        );
	}
}

?>
<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class BerandaRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'beranda',

		]);

		$this->addGet(
			'/beranda',
			[
				'action' => 'beranda',
			]
        );
	}
}

?>
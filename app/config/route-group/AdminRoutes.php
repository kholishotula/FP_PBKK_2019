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
	}
}

?>
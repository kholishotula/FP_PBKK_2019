<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class ProfilRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'profil',

		]);

		$this->addGet(
			'/profil',
			[
				'action' => 'profil',
			]
        );
	}
}

?>
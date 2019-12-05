<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class AnakRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'anak',

		]);

		$this->addGet(
			'/anak',
			[
				'action' => 'anak',
			]
        );
	}
}

?>
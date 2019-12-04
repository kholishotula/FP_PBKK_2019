<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class KegiatanRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'kegiatan',

		]);

		$this->addGet(
			'/kegiatan',
			[
				'action' => 'kegiatan',
			]
        );
	}
}

?>
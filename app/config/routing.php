<?php

$di->set(
	'router',
	function() {
		$router = new \Phalcon\Mvc\Router(false);

		$router->mount(
			new BerandaRoutes()
		);

		$router->mount(
			new ProfilRoutes()
		);

		$router->mount(
			new KegiatanRoutes()
		);

		$router->mount(
			new KontakRoutes()
		);

		$router->mount(
			new DonasiRoutes()
		);

		$router->mount(
			new PenggunaRoutes()
		);

		$router->addGet(
			'/',
			[
				'action' => 'index',
			]
        );

		$router->notFound([
			'controller' => 'index',
			'action' => 'show404',
		]);

		return $router;
	}
);

?>
<?php

use Phalcon\Config;

return new Config([

	'database' => [
		'adapter' => 'Phalcon\Db\Adapter\Pdo\Mysql',
		'host' => '127.0.0.1',
		'username' => 'root',
		'password' => '',
		'dbname' => 'fp_pbkk'
	],

	'url' => [
		'baseUrl' => 'http://localhost/FP_PBKK/'
	]

]);

?>
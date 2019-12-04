<?php

use Phalcon\Mvc\Model;

class Pengguna extends Model
{
    public $id_pengguna;
    public $username;
    public $email;
    public $password;
    
    public function initialize()
    {
      $this->setSource('pengguna');
    }

}

?>
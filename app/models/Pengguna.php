<?php

use Phalcon\Mvc\Model;
use Phalcon\Security;

class Pengguna extends Model
{
    private $id_pengguna;
    private $username;
    private $email;
    private $password;
    
    public function initialize()
    {
      $this->setSource('pengguna');
    }

    public function construct($name, $email, $pw)
    {
        $this->username = $name;
        $this->email = $email;
        $this->password = $pw;
    }

    public function _username()
    {
      return $this->username;
    }

    public function _email()
    {
      return $this->email;
    }

    public function _password()
    {
      return $this->password;
    }

    public function _id()
    {
      return $this->id_pengguna;
    }
}

?>
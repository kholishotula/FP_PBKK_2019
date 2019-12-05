<?php

use Phalcon\Mvc\Model;
use Phalcon\Security;

class Anak extends Model
{
    private $id_anak;
    private $nama_lengkap;
    private $nama;
    private $usia;
    private $jenis_kel;
    private $wali;
    private $foto_anak;
    
    public function initialize()
    {
      $this->setSource('anak');
    }

    public function construct($nama_lengkap, $nama, $usia, $jenis_kel, $wali, $foto_anak)
    {
        $this->nama_lengkap = $nama_lengkap;
        $this->nama = $nama;
        $this->usia = $usia;
        $this->jenis_kel = $jenis_kel;
        $this->wali = $wali;
        $this->foto_anak = $foto_anak;
    }

    public function _id()
    {
      return $this->id_anak;
    }

    public function _namaLengkap()
    {
      return $this->nama_lengkap;
    }

    public function _nama()
    {
      return $this->nama;
    }

    public function _usia()
    {
      return $this->usia;
    }

    public function _jenisKelamin()
    {
      return $this->jenis_kel;
    }

    public function _wali()
    {
      return $this->wali;
    }

    public function _fotoAnak()
    {
        return $this->foto_anak;
    }
}

?>
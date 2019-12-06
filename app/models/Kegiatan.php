<?php

use Phalcon\Mvc\Model;
use Phalcon\Security;

class Kegiatan extends Model
{
    private $id_keg;
    private $nama_keg;
    private $deskripsi;
    private $foto_keg;
    
    public function initialize()
    {
      $this->setSource('kegiatan');
    }

    public function construct($nama_keg, $deskripsi, $foto_keg)
    {
        $this->nama_keg = $nama_keg;
        $this->deskripsi = $deskripsi;
        $this->foto_keg = $foto_keg;
    }

    public function _namaKeg()
    {
      return $this->nama_keg;
    }

    public function _deskripsi()
    {
      return $this->deskripsi;
    }

    public function _fotoKeg()
    {
      return $this->foto_keg;
    }

    public function _id()
    {
      return $this->id_keg;
    }
}

?>
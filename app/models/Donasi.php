<?php

use Phalcon\Mvc\Model;
use Phalcon\Security;

class Donasi extends Model
{
    private $id_donasi;
    private $nama_donatur;
    private $telepon;
    private $bank;
    private $rekening;
    private $jumlah;
    private $tanggal;
    private $bukti;
    
    public function initialize()
    {
      $this->setSource('data-donasi');
    }

    public function construct($nama_donatur, $telepon, $bank, $rekening, $jumlah, $tanggal, $bukti)
    {
        $this->nama_donatur = $nama_donatur;
        $this->telepon = $telepon;
        $this->bank = $bank;
        $this->rekening = $rekening;
        $this->jumlah = $jumlah;
        $this->tanggal = $tanggal;
        $this->bukti = $bukti;
    }

    public function _nama()
    {
      return $this->nama_donatur;
    }

    public function _telepon()
    {
      return $this->telepon;
    }

    public function _id()
    {
      return $this->id_donasi;
    }

    public function _bank()
    {
      return $this->bank;
    }

    public function _rekening()
    {
      return $this->rekening;
    }

    public function _jumlah()
    {
      return $this->jumlah;
    }

    public function _tanggal()
    {
      return $this->tanggal;
    }

    public function _bukti()
    {
      return $this->bukti;
    }
}

?>
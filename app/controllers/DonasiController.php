<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use Phalcon\Http\Request\File;

use App\Validation\DonasiValidation;
use App\Validation\DonasiFileValidation;

class DonasiController extends Controller
{
	public function donasiAction()
	{
		
  }
    
  public function konfirmasiAction()
	{
		
  }
    
  public function konfirmasiDonasiAction()
	{
		$nama = $this->request->getPost('name');
    $telepon = $this->request->getPost('telepon');
    $bank = $this->request->getPost('bank');
    $rek = $this->request->getPost('rek');
    $jumlah = $this->request->getPost('jumlah');
    $tanggal = $this->request->getPost('tanggal');

    $bukti = file_get_contents($_FILES['buktiDonasi']['tmp_name']);
		$file = base64_encode($bukti);

    $val = new DonasiValidation();
    $val2 = new DonasiFileValidation();
    $msg = $val->validate($_POST);
    $msg2 = $val2->validate($_FILES);

    if (count($msg)) {
      foreach ($msg as $m) {
        echo $m . "<br>";
      }
    }
    else
    {
      if (count($msg2)) {
        foreach ($msg2 as $m) {
          echo $m . "<br>";
        }
      }
      else {
        $donasi = new Donasi();
        $donasi->construct($nama, $telepon, $bank, $rek, $jumlah, $tanggal, $file);

        if($donasi->save()) {
          $this->response->redirect('donasi');
        }
        else {
          $this->response->redirect('konfirmasi');
        }
      }
    }
  }

  public function dataDonasiAction()
  {
    $donasi = Donasi::find();
		$this->view->dataDonasi = $donasi;
  }
}
?>
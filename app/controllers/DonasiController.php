<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class DonasiController extends Controller
{
	public function donasiAction()
	{
		
    }
    
    public function konfirmasiAction()
	{
		
    }
    
    public function konfirmAction()
	{
		$username = $this->request->getPost('username');
        $email = $this->request->getPost('email');
        $password = $this->request->getPost('pw');

        $val = new PenggunaValidation();
        $msg = $val->validate($_POST);

        if (count($msg)) {
          foreach ($msg as $m) {
            echo $m . "<br>";
          }
        }
        else
        {
          $user = new Pengguna();
          $user->construct($username, $email, $this->security->hash($password));

          if($user->save()) {
              $this->response->redirect('masuk');
          }
          else {
              $this->response->redirect('daftar');

          }
        }
	}
};

?>
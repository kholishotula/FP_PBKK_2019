<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class PenggunaController extends Controller
{
	public function daftarAction()
	{
		
    }
    
    public function daftarBaruAction()
	{
        $user = new Pengguna();

        $username = $this->request->getPost('username');
        $email = $this->request->getPost('email');
        $password = $this->request->getPost('pw');
        
        $user->username = $username;
        $user->email = $email;
        $user->password = $this->security->hash($password);

        if($user->save()) {
            $this->response->redirect('masuk');
        }
        else {
            $this->response->redirect('daftar');

        }
    }
    
    public function masukAction()
	{
		
    }

    public function cekMasukAction()
	{
		
    }
};

?>
<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use App\Validation\PenggunaValidation;

class PenggunaController extends Controller
{
	public function daftarAction()
	{
		
    }
    
    public function daftarBaruAction()
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
    
    public function masukAction()
	{
		
    }

    public function cekMasukAction()
	{       
        $theUsername = $this->request->getPost('username2');
        $thePassword = $this->request->getPost('pw2');

        $user = Pengguna::findFirstByUsername($theUsername);
        if($user)
        {
          if($this->security->checkHash($thePassword, $user->_password()))
          {
            if($user->_username() == "admin")
            {
              $this->session->set(
                'admin',
                [
                    'id' => $user->_id(),
                    'username' => $user->_username()
                ]
              );
            }
            else
            {
              $this->session->set(
                'donatur',
                [
                  'id' => $user->_id(),
                  'username' => $user->_username()
                ]
              );
            }
            $this->flashSession->success("<h4 class=\"alert-heading\">Selamat Datang</h4><a href=\"" . $this->url->get('') . "\">Selamat Datang di Yayasan Yatim Piatu Kun Fayakun :).</a>.");
            return $this->response->redirect('beranda');
          }
          else
          {
            $this->flashSession->warning("<h4 class=\"alert-heading\">Error</h4><a href=\"" . $this->url->get('') . "\">Password yang Anda masukkan salah, silahkan coba lagi</a>.");
            return $this->response->redirect('masuk');
          }
        }
        else
        {
            $this->flashSession->warning("<h4 class=\"alert-heading\">Error</h4><a href=\"" . $this->url->get('') . "\">Username dan password yang Anda masukkan salah, silahkan coba lagi</a>.");
            return $this->response->redirect('masuk');
        }
    }

    public function keluarAction()
    {
		    $this->session->destroy();
        $this->response->redirect("beranda");
    }
};

?>
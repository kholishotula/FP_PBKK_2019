<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

use App\Validation\DonasiValidation;
use App\Validation\DonasiFileValidation;

class AdminController extends Controller
{
	public function adminAction()
	{
		
    }
    
    public function editAnakAction()
	{
		$anak = Anak::find();
		$this->view->dataAnak = $anak;
	}

	public function tambahAnakAction()
	{
		foreach ($this->request->getUploadedFiles() as $file)
		{
			$filename = $_FILES['foto']['name'];
			$target_dir = "img/";
			$target_file = $target_dir . $filename;
			$file->moveTo($target_file);
			
			$nama = $this->request->getPost('namaLengkap');
			$panggil = $this->request->getPost('nama');
			$usia = $this->request->getPost('usia');
			$jk = $this->request->getPost('jenis_kel');
			$wali = $this->request->getPost('wali');
			
			$anakBaru = new Anak();
			$anakBaru->construct($nama, $panggil, $usia, $jk, $wali, $target_file);
			if ($anakBaru->save() == false)
			{
				$this->response->redirect("editAnak");
			}
			else {
				$this->response->redirect("editAnak");
			}
		}
	}

	public function ubahAnakAction()
	{
		if(!$this->request->hasQuery('id_anak')) {
			$this->response->redirect("editAnak");
		}
		if($this->request->hasQuery('id_anak')) {
			$id_anak = $this->request->getQuery('id_anak');
		}
		$anak = Anak::findFirstById_anak($id_anak);
		$this->view->anaknya = $anak;
	}

	public function ubahAnaknyaAction($id_anak)
	{
		$anakUbah = Anak::findFirstById_anak($id_anak);

		$nama = $this->request->getPost('namaLengkap');
		$panggil = $this->request->getPost('nama');
		$usia = $this->request->getPost('usia');
		$jk = $this->request->getPost('jenis_kel');
		$wali = $this->request->getPost('wali');
		$target_file = $anakUbah->_fotoAnak();
			
		$anakUbah->construct($nama, $panggil, $usia, $jk, $wali, $target_file);
		if ($anakUbah->save() == false)
		{
			$this->response->redirect("ubahAnak");
		}
		else {
			$this->response->redirect("editAnak");
		}
	}

	public function hapusAnakAction()
	{
		if(!$this->request->hasQuery('id_anak')) {
			$this->response->redirect("editAnak");
		}
		if($this->request->hasQuery('id_anak')) {
			$id_anak = $this->request->getQuery('id_anak');
		}
		$anak = Anak::findFirstById_anak($id_anak);
		if($anak !== false)
		{
			if ($anak->delete() === false) {
				?>
				<script type="text/javascript">
					alert('Sorry, we can not delete these child right now');
				</script>
				<?php
			} else {
				?>
				<script type="text/javascript">
					alert('These child has been deleted');
				</script>
				<?php
			}
			$this->response->redirect("editAnak");
		}
	}

	public function editDonasiAction()
	{
		$donasi = Donasi::find();
		$this->view->dataDonasi = $donasi;
	}

	public function tambahDonasiAction()
	{
		$nama = $this->request->getPost('nama');
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
			if($nama == NULL)
			{
				$nama = "Hamba Allah";
			}
			$donasi->construct($nama, $telepon, $bank, $rek, $jumlah, $tanggal, $file);

			if($donasi->save()) {
				$this->response->redirect('editDonasi');
			}
			else {
				$this->response->redirect('editDonasi');
			}
		}
		}
	}

	public function hapusDonasiAction()
	{
		if(!$this->request->hasQuery('id_donasi')) {
			$this->response->redirect("editDonasi");
		}
		if($this->request->hasQuery('id_donasi')) {
			$id_donasi = $this->request->getQuery('id_donasi');
		}
		$donasi = Donasi::findFirstById_donasi($id_donasi);
		if($donasi !== false)
		{
			if ($donasi->delete() === false) {
				?>
				<script type="text/javascript">
					alert('Sorry, we can not delete these donation right now');
				</script>
				<?php
			} else {
				?>
				<script type="text/javascript">
					alert('These donation has been deleted');
				</script>
				<?php
			}
			$this->response->redirect("editDonasi");
		}
	}

	public function editKegiatanAction()
	{
		$kegiatan = Kegiatan::find();
		$this->view->dataKegiatan = $kegiatan;
	}

	public function tambahKegiatanAction()
	{
		foreach ($this->request->getUploadedFiles() as $file)
		{
			$filename = $_FILES['fotoKeg']['name'];
			$target_dir = "img/";
			$target_file = $target_dir . $filename;
			$file->moveTo($target_file);
			
			$nama = $this->request->getPost('nama');
			$deskripsi = $this->request->getPost('deskripsi');
			
			$kegiatanBaru = new Kegiatan();
			$kegiatanBaru->construct($nama, $deskripsi, $target_file);
			if ($kegiatanBaru->save() == false)
			{
				$this->response->redirect("editKegiatan");
			}
			else {
				$this->response->redirect("editKegiatan");
			}
		}
	}

	public function lihatDonaturAction()
	{
		$id = $this->session->get('admin')['id'];
		$donatur = Pengguna::find(
			[
				'conditions' => 'id_pengguna != ' . $id,
			]
		);
		$this->view->dataDonatur = $donatur;
	}
};

?>
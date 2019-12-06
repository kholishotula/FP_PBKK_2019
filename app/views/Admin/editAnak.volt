{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Atur Data Anak Panti{% endblock %}

{% block content %}
{% if session.has('admin') %}
	
{% else %}
    <script type="text/javascript">
        alert('Anda bukan Admin, Anda tidak berhak akses');
        document.location.href="{{ url("beranda") }}";
    </script>
{% endif %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">DATA ANAK PANTI</h2></center>
                    <div class="row">
                        <div class="col offset-md-11">
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-create" title="Tambah">
                            <i class="fa fa-plus">Tambah</i>
                        </button>
                        </div>
                    </div>
                    <div class="row">
                        {% for anak in dataAnak %}
                            <div class="col-3">
                                <div class="card text-center">
                                    <img src="{{ anak._fotoAnak() }}" class="card-img-top">
                                    <h4 class="card-title">{{ anak._namaLengkap() }}</h4>
                                    <p class="card-text">Nama Panggilan : {{ anak._nama() }}</p>
                                    <p class="card-text">Usia : {{ anak._usia() }} tahun</p>
                                    <p class="card-text">Jenis Kelamin : {{ anak._jenisKelamin() }}</p>
                                    <p class="card-text">Kondisi Wali : {{ anak._wali() }}</p>
                                    <center>
                                        <div class="btn-group">
                                            <form action="{{ url("ubahAnak") }}" method="get">
                                                <input type="hidden" name="id_anak" value={{ anak._id() }}>
                                                <button type="submit" class="btn btn-sm btn-secondary" title="Edit">
                                                    <i class="fa fa-pencil">Edit</i>
                                                </button>
                                            </form>
                                            <form action="{{ url("hapusAnak") }}" method="get">
                                                <input type="hidden" name="id_anak" value={{ anak._id() }}>
                                                <button type="submit" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#modal-delete" title="Hapus">
                                                    <i class="fa fa-times">Hapus</i>
                                                </button>
                                            </form>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        {% endfor %}
                    </div>
                </div>
            </main>
        </div>
        <div class="modal fade" id="modal-delete" tabindex="-1" role="dialog" aria-labelledby="modal-fadein" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="block block-themed block-transparent mb-0">
                        <div class="block-header bg-success">
                            <h3 class="block-title">Sukses</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="si si-close"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <p>Data anak telah terhapus.</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="{{url('editAnak')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modal-create" tabindex="-1" role="dialog" aria-labelledby="modal-fadein" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="block block-themed block-transparent mb-0">
                        <div class="block-header bg-info">
                            <h3 class="block-title">Data Anak</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="si si-close"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <form action="{{url('tambahAnak')}}" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="namaLengkap" placeholder="Nama Lengkap">
                                        <label>Nama Lengkap</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="nama" placeholder="Nama Panggilan">
                                        <label>Nama Panggilan</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="number" class="form-control" name="usia">
                                        <label>Usia</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="radio" name="jenis_kel" value="Laki-laki"> Laki-laki<br>
		                                <input type="radio" name="jenis_kel" value="Perempuan"> Perempuan<br>
                                        <label>Jenis Kelamin</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <select class="form-control" name="wali">
                                            <option value="Masih ada">Masih Ada</option>
                                            <option value="Yatim">Yatim</option>
                                            <option value="Piatu">Piatu</option>
                                            <option value="Yatim piatu">Yatim Piatu</option>
                                            <option value="Tidak diketahui">Tidak Diketahui</option>
                                        </select>
                                        <label>Kondisi Wali</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="file" name="foto">
                                        <label for="foto">Foto Anak</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success text-black">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="{{url('editAnak')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                    </div>
                </div>
            </div>
        </div>
{% endblock %}

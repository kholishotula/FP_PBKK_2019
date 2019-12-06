{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Atur Data Kegiatan{% endblock %}

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
                    <center><h2 class="content-heading">DATA KEGIATAN</h2></center>
                    <div class="row">
                        <div class="col offset-md-11">
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-create" title="Tambah">
                            <i class="fa fa-plus">Tambah</i>
                        </button>
                        </div>
                    </div>
                    <div class="row">
                        {% for keg in dataKegiatan %}
                            <div class="col-6">
                                <div class="card text-center">
                                    <img src="{{ keg._fotoKeg() }}" class="card-img-top">
                                    <h4 class="card-title">{{ keg._namaKeg() }}</h4>
                                    <p class="card-text">Deskripsi : {{ keg._deskripsi() }}</p>
                                </div>
                            </div>
                        {% endfor %}
                    </div>
                </div>
            </main>
        </div>
        <div class="modal fade" id="modal-create" tabindex="-1" role="dialog" aria-labelledby="modal-fadein" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="block block-themed block-transparent mb-0">
                        <div class="block-header bg-info">
                            <h3 class="block-title">Data Kegiatan</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="si si-close"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <form action="{{url('tambahKegiatan')}}" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="text" class="form-control" name="nama">
                                    <label>Nama Kegiatan</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="textarea" class="form-control" name="deskripsi">
                                    <label>Deskripsi</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="file" name="fotoKeg">
                                    <label for="fotoKeg">Foto Kegiatan</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-alt-primary btn-info" data-toggle="modal" data-target="#modal-fadein">Submit</button>
                            </div>
                        </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="{{url('editKegiatan')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                    </div>
                </div>
            </div>
        </div>
{% endblock %}

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
{% set value = "ubahAnak/" ~ anaknya._id() %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">UBAH DATA ANAK PANTI</h2></center>
                            <form action="{{url(value)}}" method="post">
                                <div class="form-group">
                                    <div class="form-material">
                                        <img src="{{ anaknya._fotoAnak() }}">
                                        <label for="foto">Foto Anak</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="namaLengkap" value="{{ anaknya._namaLengkap() }}">
                                        <label>Nama Lengkap</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="nama" value="{{ anaknya._nama() }}">
                                        <label>Nama Panggilan</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="number" class="form-control" name="usia" value="{{ anaknya._usia() }}">
                                        <label>Usia</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="jenis_kel" value="{{ anaknya._jenisKelamin() }}">
                                        <label>Jenis Kelamin</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="wali" value="{{ anaknya._wali() }}">
                                        <label>Kondisi Wali</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success text-black">Submit</button>
                                    <a href="{{url('editAnak')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                                </div>
                            </form>
                        </div>
                    </main>
                </div>
{% endblock %}

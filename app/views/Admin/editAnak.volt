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
{% set tahun = time() %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">DATA ANAK PANTI</h2></center>
                    <div class="row">
                        {% for anak in dataAnak %}
                            <div class="col-4 float-left">
                                <div class="card text-center">
                                    <img src="{{ anak._fotoAnak() }}">
                                    <h4>{{ anak._namaLengkap() }}</h4>
                                    <p>Nama Panggilan : {{ anak._nama() }}</p>
                                    <p>Usia : {{ anak._usia() }} tahun</p>
                                    <p>Jenis Kelamin : {{ anak._jenisKelamin() }}</p>
                                    <p>Kondisi Wali : {{ anak._wali() }}</p>
                                    <center>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-sm btn-secondary" data-toggle="tooltip" title="Edit">
                                                <i class="fa fa-pencil">Edit</i>
                                            </button>
                                            <button type="button" class="btn btn-sm btn-secondary" data-toggle="tooltip" title="Delete">
                                                <i class="fa fa-times">Hapus</i>
                                            </button>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        {% endfor %}
                    </div>
                </div>
            </main>
        </div>
{% endblock %}

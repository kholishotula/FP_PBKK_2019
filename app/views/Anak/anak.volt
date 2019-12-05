{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Data Anak Panti{% endblock %}

{% block content %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">DATA ANAK PANTI</h2></center>
                    <div class="row">
                        {% for anak in dataAnak %}
                            <div class="col-3">
                                <div class="card text-center">
                                    <img src="{{ anak._fotoAnak() }}" class="card-img-top">
                                    <div class="card-body">
                                        <h4 class="card-title">{{ anak._namaLengkap() }}</h4>
                                        <p class="card-text">Nama Panggilan : {{ anak._nama() }}</p>
                                        <p class="card-text">Usia : {{ anak._usia() }} tahun</p>
                                        <p class="card-text">Jenis Kelamin : {{ anak._jenisKelamin() }}</p>
                                        <p class="card-text">Kondisi Wali : {{ anak._wali() }}</p>
                                    </div>
                                </div>
                            </div>
                        {% endfor %}
                    </div>
                </div>
            </main>
        </div>
{% endblock %}

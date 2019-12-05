<header id="page-header">
<!-- Header Content -->
<div class="content-header">
    <!-- Left Section -->
    <div class="content-header-section">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a href="{{url('beranda')}}" class="nav-link active">
                <i class="fa fa-fw fa-home mr-5"></i>Beranda
                </a>
            </li>
            <li class="nav-item">
                <img src="img/logo.png" class="img-responsive" style="width: 50%; height: 80%">
            </li>
        </ul>
    </div>
    <!-- END Left Section -->

    <!-- Right Section -->
    <div class="content-header-section">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a href="{{url('profil')}}" class="nav-link">Profil</a>
            </li>
            <li class="nav-item">
                <a href="{{url('anak')}}" class="nav-link">Data Anak</a>
            </li>
            <li class="nav-item">
                <a href="{{url('kegiatan')}}" class="nav-link">Berita</a>
            </li>
            <li class="nav-item">
                <a href="{{url('kontak')}}" class="nav-link">Kontak</a>
            </li>
            <li class="nav-item">
                <a href="{{url('donasi')}}" class="nav-link">Donasi</a>
            </li>
            {% if session.has('admin') %}
                <li class="btn btn-success dropdown">
                    <a class="btn-btn-success dropdown-toggle text-black" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Admin</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="{{url('editAnak')}}">Atur Data Anak</a>
                        <a class="dropdown-item" href="{{url('editDonasi')}}">Atur Data Donasi</a>
                        <a class="dropdown-item" href="{{url('keluar')}}">Keluar</a>
                    </div>
                </li>
            {% else %}
                {% if session.has('donatur') %}
                    <li><a href="{{url('keluar')}}" class="btn btn-success text-black">Keluar</a></li>
                {% else %}
                    <li><a href="{{url('masuk')}}" class="btn btn-success text-black">Masuk</a></li>
                {% endif %}
            {% endif %}
        </ul>
    </div>
    <!-- END Right Section -->
</div>
<!-- END Header Content -->
</header>
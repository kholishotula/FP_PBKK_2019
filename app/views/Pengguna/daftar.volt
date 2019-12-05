{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Daftar{% endblock %}

{% block content %}
{% if session.has('donatur') %}
    <script type="text/javascript">
        alert('Anda telah log in');
        document.location.href="{{ url("beranda") }}";
    </script>
{% endif %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">PENDAFTARAN AKUN</h2></center>
                    <div class="row">
                        <div class="col-6">
                            <form action="{{url('daftar')}}" method="post">
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="username" placeholder="username">
                                        <label>Username</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="email" class="form-control" name="email" placeholder="contoh@xxx.com">
                                        <label>Email</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="password" class="form-control" name="pw">
                                        <label>Password</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="password" class="form-control" name="pw2">
                                        <label>Konfirmasi Password</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success text-black" data-toggle="modal" data-target="#modal-fadein">Submit</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-6">
                            <img src="{{url('img/zakat.jpg')}}">
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div class="modal fade" id="modal-fadein" tabindex="-1" role="dialog" aria-labelledby="modal-fadein" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="block block-themed block-transparent mb-0">
                        <div class="block-header bg-success">
                            <h3 class="block-title">Terima kasih</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="si si-close"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <p>Terima kasih telah mendaftar :).</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
{% endblock %}
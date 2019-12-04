{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Masuk{% endblock %}

{% block content %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">MASUK AKUN</h2></center>
                    <div class="row justify-content-md-center">
                        <div class="col col-md-6">
                            <form action="{{url('masuk')}}" method="post">
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="text" class="form-control" name="username2" placeholder="username">
                                        <label>Username</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-material">
                                        <input type="password" class="form-control" name="pw2">
                                        <label>Password</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-alt-primary btn-info" data-toggle="modal" data-target="#modal-fadein">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <center>
                        <p class="content nice-copy">Belum punya akun?<br>
                        <a href="{{url('daftar')}}">Daftar Disini</a></p>
                    </center>
                </div>
            </main>
        </div>
        <div class="modal fade" id="modal-fadein" tabindex="-1" role="dialog" aria-labelledby="modal-fadein" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="block block-themed block-transparent mb-0">
                        <div class="block-header bg-success">
                            <h3 class="block-title">Selamat Datang</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="si si-close"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <p>Selamat Datang di Yayasan Yatim Piatu Kun Fayakun :).</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="{{url('beranda')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                    </div>
                </div>
            </div>
        </div>
{% endblock %}
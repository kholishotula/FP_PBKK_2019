{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Konfirmasi Donasi{% endblock %}

{% block content %}
{% if session.has('donatur') %}
	
{% else %}
    <script type="text/javascript">
        alert('Silahkan log in terlebih dahulu');
        document.location.href="{{ url("masuk") }}";
    </script>
{% endif %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">KONFIRMASI DONASI</h2></center>
                    <div class="col-xl-6">
                        <form action="{{url('konfirmasi')}}" method="post">
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="text" class="form-control" name="nama" placeholder="Nama anda (jika berkenan mencantumkan nama)">
                                    <label>Nama</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="number" class="form-control" name="telepon" placeholder="08XXXXXXXXX">
                                    <label>Telepon atau HP</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="text" class="form-control" name="bank" placeholder="Bank BCD">
                                    <label>Bank Asal</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="text" class="form-control" name="rek" placeholder="XXXXX-XXXX-XXXX">
                                    <label>Nomor Rekening</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="number" class="form-control" name="jumlah" placeholder="XXXXX">
                                    <label>Jumlah Donasi</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-material">
                                    <input type="date" class="form-control" name="tanggal">
                                    <label>Tanggal Donasi</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <strong><p>Bukti Donasi</p></strong>
                                <div class="form-material">
                                    <input type="file" class="custom-file-input" name="bukti">
                                    <label class="custom-file-label">Pilih file</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-alt-primary btn-info" data-toggle="modal" data-target="#modal-fadein">Submit</button>
                            </div>
                        </form>
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
                            <p>Terima kasih telah melakukan donasi :).</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="{{url('donasi')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                    </div>
                </div>
            </div>
        </div>
{% endblock %}

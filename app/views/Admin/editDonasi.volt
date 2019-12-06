{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Atur Data Donasi{% endblock %}

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
                    <center><h2 class="content-heading">DATA DONASI</h2></center>
                    <div class="row">
                        <div class="col offset-md-11">
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-create" title="Tambah">
                            <i class="fa fa-plus">Tambah</i>
                        </button>
                        </div>
                    </div>
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama Donatur</th>
                                <th scope="col">Telepon</th>
                                <th scope="col">Bank</th>
                                <th scope="col">Rekening</th>
                                <th scope="col">Jumlah</th>
                                <th scope="col">Tanggal</th>
                                <th scope="col">Bukti</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            {% for donasi in dataDonasi %}
                                <tr>
                                    <th scope="row">{{ donasi._id() }}</th>
                                    <td>{{ donasi._nama() }}</td>
                                    <td>{{ donasi._telepon() }}</td>
                                    <td>{{ donasi._bank() }}</td>
                                    <td>{{ donasi._rekening() }}</td>
                                    <td>{{ donasi._jumlah() }}</td>
                                    <td>{{ donasi._tanggal() }}</td>
                                    <td><img src="data:image/png;base64,{{ donasi._bukti() }}" width=200px></td>
                                    <td>
                                        <div class="btn-group">
                                            <form action="{{ url("hapusDonasi") }}" method="get">
                                                <input type="hidden" name="id_donasi" value={{ donasi._id() }}>
                                                <button type="submit" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#modal-delete" title="Delete">
                                                    <i class="fa fa-times">Hapus</i>
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            {% endfor %}
                        </tbody>
                    </table>
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
                            <p>Data donasi telah terhapus.</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="{{url('editDonasi')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modal-create" tabindex="-1" role="dialog" aria-labelledby="modal-fadein" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="block block-themed block-transparent mb-0">
                        <div class="block-header bg-info">
                            <h3 class="block-title">Data Donasi</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="si si-close"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <form action="{{url('tambahDonasi')}}" method="post" enctype="multipart/form-data">
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
                                <div class="form-material">
                                    <input type="file" name="buktiDonasi">
                                    <label for="buktiDonasi">Bukti Donasi</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-alt-primary btn-info" data-toggle="modal" data-target="#modal-fadein">Submit</button>
                            </div>
                        </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="{{url('editDonasi')}}" class="btn btn-alt-secondary" data-dismiss="modal">Kembali</a>
                    </div>
                </div>
            </div>
        </div>
{% endblock %}

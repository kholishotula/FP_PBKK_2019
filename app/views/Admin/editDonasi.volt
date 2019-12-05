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
                            <tr>
                                {% for donasi in dataDonasi %}
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
                                            <button type="button" class="btn btn-sm btn-secondary" data-toggle="tooltip" title="Edit">
                                                <i class="fa fa-pencil">Edit</i>
                                            </button>
                                            <button type="button" class="btn btn-sm btn-secondary" data-toggle="tooltip" title="Delete">
                                                <i class="fa fa-times">Hapus</i>
                                            </button>
                                        </div>
                                    </td>
                                {% endfor %}
                            </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
{% endblock %}

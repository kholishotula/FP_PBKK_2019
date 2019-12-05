{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Data Donasi{% endblock %}

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
                    <center><h2 class="content-heading">DATA DONASI</h2></center>
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama Donatur</th>
                                <th scope="col">Jumlah</th>
                                <th scope="col">Tanggal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                {% for donasi in dataDonasi %}
                                    <th scope="row">{{ donasi._id() }}</th>
                                    <td>{{ donasi._nama() }}</td>
                                    <td>{{ donasi._jumlah() }}</td>
                                    <td>{{ donasi._tanggal() }}</td>
                                {% endfor %}
                            </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
{% endblock %}

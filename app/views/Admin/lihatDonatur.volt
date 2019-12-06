{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Data Donatur{% endblock %}

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
                    <center><h2 class="content-heading">DATA DONATUR</h2></center>
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Username</th>
                                <th scope="col">Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            {% for donatur in dataDonatur %}
                                <tr>
                                    <th scope="row">{{ donatur._id() }}</th>
                                    <td>{{ donatur._username() }}</td>
                                    <td>{{ donatur._email() }}</td>
                                </tr>
                            {% endfor %}
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
{% endblock %}

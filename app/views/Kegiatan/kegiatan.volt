{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Berita{% endblock %}

{% block content %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">                        
                    <center><h2 class="content-heading">KEGIATAN YAYASAN</h2></center>
                    <!-- Posts -->
                    <div class="row">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-8">
                            {% for keg in dataKegiatan %}
                                <div class="mb-50">
                                    <div class="overflow-hidden rounded mb-20" style="height: auto;">
                                            <img class="img-fluid" src={{ keg._fotoKeg() }}>
                                        </a>
                                    </div>
                                    <h3 class="h4 font-w700 text-uppercase mb-5">{{ keg._namaKeg() }}</h3>
                                    <div class="text-muted mb-10">
                                        <a class="text-muted mr-15">
                                            <i class="fa fa-fw fa-user mr-5"></i>Admin
                                        </a>
                                    </div>
                                    <p>{{ keg._deskripsi() }}</p>
                                </div>
                            {% endfor %}
                        </div>
                        <!-- END Posts -->
                    </div>  
                </div>
            </main>
        </div>
{% endblock %}
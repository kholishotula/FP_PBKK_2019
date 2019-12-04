{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Beranda{% endblock %}

{% block content %}
	<div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
        <main id="main-container">
            <div class="content">
                <div class="row">
                    <div id="demo" class="carousel slide" data-ride="carousel" data-interval="false" data-pause="hover">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                            <img class="img img-fluid" src="{{url('img/bg1.jpg')}}" alt="BI">
                            <div class="transpa carousel-caption bg-dark">
                                <h3>Bersama Bank Indonesia</h3>
                                <p>Undangan di Bank Indonesia</p>
                            </div>   
                            </div>
                            <div class="carousel-item">
                            <img class="img img-fluid" src="{{url('img/bg2.jpg')}}" alt="Pendiri">
                            <div class="transpa carousel-caption bg-dark">
                                <h3>Bersama dengan pendiri</h3>
                                <p>Foto bersama dengan orang-orang yang berjasa besar</p>
                            </div>   
                            </div>
                            <div class="carousel-item">
                            <img class="img img-fluid" src="{{url('img/bg3.jpg')}}" alt="Mandiri">
                            <div class="transpa carousel-caption bg-dark">
                                <h3>Santunan Langsung</h3>
                                <p>Acara Santunan Langsung Donatur</p>
                            </div>   
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>

                <center><h2 class="content-heading">YAYASAN PANTI ASUHAN - KUN FAYAKUN</h2></center>
                <p class="block-content nice-copy">
                Selamat Datang di yayasan yatim piatu KUN FAYAKUN, melalui situs ini, kami mengajak anda para dermawan untuk bersama-sama memperhatikan anak – anak yatim piatu, yatim dan piatu dengan beramal, bersodakoh, menginfaqkan sebagian harta anda melalui Yayasan Al Muzakki yang akan kami salurkan kepada anak-anak yatim piatu, yatim dan piatu. Insya Allah dengan amanah ” Hidup lebih berarti dengan berbagi”. Namun sebelumnya, mohon kesediaan anda untuk menelusuri web ini agar lebih mengetahui tentang Yayasan KUN FAYAKUN, Atas apa yang telah anda infaqkan, kami mengucapkan “Jazakumullah khairan katsira”.
                </p>

				<blockquote>
					<p class="block block-content">
					<i>“Yayasan ini Bukanlah <strong>Ajaran Tertentu</strong>, Bukan <strong>Ajang Bisnis</strong>, Bukan tempat <strong>Jual Beli</strong> ILMU / PERDUKUNAN. Kami tidak bisa apa-apa dan tidak punya apa-apa. Semua yang kami lakukan karena <strong>ALLAH</strong> Ta'ala. Kami hanya perantara. Mari jadikan yayasan ini sebagai penegak syariat Islam yang dituntunkan/disunnahkan Baginda <strong>Nabi Muhammad SAW</strong>. Semoga Allah Melindungi, Mencukupi dan Mengijabahi Aamiin.....”</i>
					</p>
				</blockquote>

                <center><h2 class="content-heading">PROGRAM & KEGIATAN</h2></center>

                <div class="row items-push">
                    <div class="row items-push js-gallery img-fluid-100">
                        <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn">
                            <div class="options-container fx-item-zoom-in fx-overlay-slide-down">
                                <img class="img-fluid options-item" src="img/p1.jpg" alt="">
                                <div class="options-overlay bg-black-op-75">
                                    <div class="options-overlay-content">
                                        <h4 class="h3 text-white-op mb-15">Istighosah Ibu-ibu</h4>
                                    </div>
                                </div>
                                <h4 class="bg-info display 4">Istighosah</h4>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn">
                            <div class="options-container fx-item-zoom-in fx-overlay-slide-down">
                                <img class="img-fluid options-item" src="img/p2.jpg" alt="">
                                <div class="options-overlay bg-black-op-75">
                                    <div class="options-overlay-content">
                                        <h4 class="h3 text-white-op mb-15">Anak-anak Mengaji</h4>
                                    </div>
                                </div>
                                <h4 class="bg-info display 4">TPQ Anak</h4>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn">
                            <div class="options-container fx-item-zoom-in fx-overlay-slide-down">
                                <img class="img-fluid options-item" src="img/p3.jpg" alt="">
                                <div class="options-overlay bg-black-op-75">
                                    <div class="options-overlay-content">
                                        <h4 class="h3 text-white-op mb-15">Pengajian Rutin dilaksanakan setiap malam Jumat</h4>
                                    </div>
                                </div>
                                <h4 class="bg-info display 4">Pengajian Rutin</h4>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn">
                            <div class="options-container fx-item-zoom-in fx-overlay-slide-down">
                                <img class="img-fluid options-item" src="img/p4.jpg" alt="">
                                <div class="options-overlay bg-black-op-75">
                                    <div class="options-overlay-content">
                                        <h4 class="h3 text-white-op mb-15">Tausiah Umum</h4>
                                    </div>
                                </div>
                                <h4 class="bg-info display 4">Tausiah Umum</h4>
                            </div>
                        </div>
                    </div>
                </div>

				<center>
					<h2 class="content-heading">DAN TAHUKAH ANDA?</h2>
					<p class="block-content nice-copy">
					Tidak perlu menunggu kaya untuk menjadi dermawan, justru kedermawanan akan mengundang kekayaan.<br>
					Jika menjadi dermawan adalah motivasi utama anda mencari kekayaan, maka kekayaan akan mendatangimu dengan mudah...
					</p>
					<a class="btn btn-success" href="{{url('donasi')}}" role="button">Donasi</a>
				</center>
            </div>
        </main>
    </div>
{% endblock %}
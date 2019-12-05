{% extends "layouts\base.volt" %}

{% block title %}YYPKF - Donasi{% endblock %}

{% block content %}
{% set tahun = time() %}
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <main id="main-container">
                <div class="content">
                    <center><h2 class="content-heading">MEDIA DONASI</h2></center>
                    <div class="row">
                        <div class="col-8">
                            <h3 class="content-heading">Pertama</h3>
                            <p class="block-content nice-copy">Dengan mentransfer ke rekening Bank di nomer rekening : <br>
                            <strong>MANDIRI: 140-00-1596894-5 A/N. YAYASAN KUN FAYAKUN</strong> <br>
                            (mohon untuk mencantumkan nama bila berkenan)<br>
                            Kemudian silahkan login dan isi formulir konfirmasi <strong><a href="{{url('konfirmasi')}}">disini</a></strong></p>
                            <h3 class="content-heading">Kedua</h3>
                            <p class="block-content nice-copy">Dengan menyerahkan langsung kepada baik berupa uang atau barang ke 
                            alamat : <strong>Jl.Raya Pandugo Timur No. 7 - 8 Rungkut - Surabaya. Jawa Timur</strong></p>
                            <h3 class="content-heading">Ketiga</h3>
                            <p class="block-content nice-copy">Bagi calon donatur yng masih dalam lingkup surabaya, kami siap untuk mengambil ke 
                            tempat / lokasi yang sekiranya masih bisa kami jangkau, mohon untuk menginformasikan alamat dan nomer telpon melalui 
                            email kami : <strong><a href="mailto:donasi@yayasankunfayakun.com">donasi@yayasankunfayakun.com</a></strong></p>
                        </div>
                        <div class="col-4">
                            <img src="{{url('img/donate.jpg')}}">
                        </div>
                    </div>
                    <div>
                        <center><h2 class="content-heading">DATA DONASI</h2></center>
                        <p>Alhamdulillah, telah terkumpul dana sebesar Rp pada tahun {{ date("Y", tahun) }} <br>
                        <a href="{{url('dataDonasi')}}">Klik disini untuk mengetahui data donasi Yayasan Kun Fayakun</p></a>
                    </div>
                    <br>
                    <blockquote class="blockquote text-center bg-info text-black">
                        <p class="mb-0">Semoga apa yang akan Bapak / Ibu sumbangkan kepada yayasan kami akan senantiasa<br>
                        di ridhoi oleh allah SWT, akan membawa barokah bagi keluarga dan semua umat.  Semoga akan dilipat gandakan pahala dan<br>
                        rezekinya dari sumber yang tidak disangka sangka datangnya…</p>
                        <footer class="blockquote-footer text-black">AAAMIIN.</footer>
                    </blockquote>
                </div>
            </main>
        </div>
{% endblock %}

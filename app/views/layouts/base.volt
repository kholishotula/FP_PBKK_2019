<!DOCTYPE html>
<html>
<head>
	{% include 'layouts\header.volt' %}
	<title>{% block title %} {% endblock %}</title>
</head>
<body>
	{% include 'layouts\navbar.volt' %}

	{% block content %} {% endblock %}
	<br>
	<br>
	<div class="menuFooter clearfix">
		<div class="container">
			<div class="row clearfix">
				<div class="col">
					<h5>YAYASAN</h5>
					<ul class="menuLink clearfix">
						<li>
							<a href="{{url('profil')}}" title="PROFIL"><span>PROFIL</span></a>
						</li>
					</ul>
				</div>
				<div class="col borderLeft clearfix">
					<h5>DONATUR</h5>
					<ul class="menuLink clearfix">
						<li>
							<a href="{{url('donasi')}}" title="PANDUAN DONATUR"><span>PANDUAN DONATUR</span></a>
						</li>
						<li>
							<a href="{{url('donasi')}}" title="CARA DONASI"><span>CARA DONASI</span></a>
						</li>
					</ul>
				</div> 
				<div class="col borderLeft clearfix">
					<div class="footer-address"> 
						<h5>KONTAK KAMI :</h5>
						<address>
							<i class="fa fa-map-marker"></i>
							Jl.Raya Pandugo Timur No. 7-8 Rungkut - Surabaya 
						</address> 
						<h5><i class="fa fa-phone"></i> 031 8720331</h5>
						<h5><i class="fa fa-mobile"></i> 085102913999</h5>
					</div>
				</div> 
			</div> 
		</div>
	</div>
	<br>
	<div class="bg-info clearfix"> 
		<div class="row"> 
			<p>© 2019 PBKK - Crafted with <i class="fa fa-heart text-pulse"></i> by Maya</p>
		</div> 
	</div>
</body>
</html>
<body class="registration-page">
<div class="registration-page-content">
	<div class="registration-page__container">
		<div class="registration-page-header">
			<div class="header__logo ml-100"><a class="header__logo-icon-link" href="#"><i class="far fa-paper-plane"></i></a>
				<div class="header__general">
					<p class="header__title mb-0"><a class="header__title" href="<?=HOST?>">Супер Сайт</a>
					</p>
				</div>
			</div>
			
			<div class="header-user mt-45 mr-45">
				<?php if ( $uri[0] == 'registration' ) {  ?>
					<a class="login-page__links" href="<?=HOST?>login">Вход</a>
				<?php } else { ?>
					<a class="login-page__links" href="<?=HOST?>registration">Регистрация</a>
				<?php } ?>
			</div>

		</div>
		


		<?=$content?>


		<div class="registration-page-footer">
			<div class="footer__copyright">
				<p>© Юрий Ключевский</p>
				<p>Создано c <i class="fas fa-heart"> </i> в <a class="link-bold" href="http://webcademy.ru/">WebCademy.ru</a> в 2017 году </p>
			</div>
		</div>
	</div>
</div>
<!-- 	build:jsLibs js/libs.js
<script src="<?=HOST?>templates/assets/libs/jquery/jquery.min.js"></script>
endbuild
build:jsVendor js/vendor.js
<script src="<?=HOST?>templates/assets/libs/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script>
endbuild
google maps
<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAm799yaN1ZBAnyf6PT3Y_iXSZLkG5w1oE&amp;callback=initMap"></script>
<script src="js/map.js"></script>
//google maps
build:jsMain js/main.js
<script src="<?=HOST?>templates/assets/js/main.js"></script>
endbuild
<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html> -->
$(document).ready(function() {
	
	/* For custom file inputs
			Based on code
			by Osvaldas Valutis, www.osvaldas.info (Available for use under the MIT License)
			and adapted for our project usage
	*/		
	$( '.file' ).each( function(){
		var $input	 = $( this ).find('.file__input'),
			$caption = $( this ).find( '.file__inner-caption' ),
			captionVal = $caption.html();

		$input.on( 'change', function( e ){
			var fileName = '';

			if( this.files && this.files.length > 1 )
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
			else if( e.target.value )
				fileName = e.target.value.split( '\\' ).pop();

			if( fileName )
				$caption.html( fileName );
			else
				$caption.html( captionVal );
		});

		// Firefox bug fix
		$input
		.on( 'focus', function(){ $input.addClass( 'has-focus' ); })
		.on( 'blur', function(){ $input.removeClass( 'has-focus' ); });
	});

	// Firefox bug fix for checkboxes and radiobuttons
	$('.radio__input')
		.on( 'focus', function(){ $(this).addClass( 'has-focus' ); })
		.on( 'blur', function(){ $(this).removeClass( 'has-focus' ); });

	$('.checkbox__input')
		.on( 'focus', function(){ $(this).addClass( 'has-focus' ); })
		.on( 'blur', function(){ $(this).removeClass( 'has-focus' ); });


	// ----- check comment form ----- //	
	$('input[data-add-comment]').on('click', function(e){
		e.preventDefault();
		comment = $('.comment-add-block__text').children('.textarea');
		if ( comment.val() == '' ) {
			$('.error[data-error-comment-empty]').fadeIn();
			comment.focus(function(event) {
				$('.error[data-error-comment-empty]').fadeOut();
			});
		} else {
			$('#commentForm').submit();
		}
	});


/* // ----- check comment form -----old //
	$('.comment-add__button').on('click', function(e){
		e.preventDefault();
		comment = $('.comment-add-block__text').children('.textarea');
		if ( comment.val() == '' ) {
			$('.error').fadeIn();
			comment.focus(function(event) {
				$('.error').fadeOut();
			});
		}
	});
*/

/*// ----- check login form ----- //
	$('.button--enter').on('click', function(e){
		e.preventDefault();
		input = $('.login-page-form__row').children('input');
		mail = $('.login-page-form__row').children('input[type=email]');
		password = $('.login-page-form__row').children('input[type=password]');
		if ( mail.val() == '' && password.val() == '') {
			$('.error').fadeIn();
			$('.error').text('Введите логин и пароль');
			input.focus(function(event) {
				$('.error').fadeOut();
			});
		} else if ( mail.val() == '') {
			$('.error').fadeIn();
			$('.error').text('Введите логин');
			mail.focus(function(event) {
				$('.error').fadeOut();
			});
		} else if ( password.val() == '' ) {
			$('.error').fadeIn();
			$('.error').text('Введите пароль');
			password.focus(function(event) {
				$('.error').fadeOut();
			});
		} else {
			// переходим на страницу профиля
			$('#loginForm').submit();
		}
	});
*/


/*// ----- check registration form ----- //
	$('.button--registration').on('click', function(e){
		event.preventDefault();
		input = $('.registration-page-form__row').children('input');
		mail = $('.registration-page-form__row').children('input[type=email]');
		password = $('.registration-page-form__row').children('input[type=password]');
		if ( mail.val() == '') {
			$('.error').fadeIn(1000);
			
			event.preventDefault();
			mail.focus(function(event) {
				$('.error').fadeOut();
			});
			} else if ( mail.test() == /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i) {
				$('.error').fadeIn(1000);
				$('.error').text('Введите действительный email');
				event.preventDefault();
				mail.focus(function(event) {
					$('.error').fadeOut();
				});
			}	else if ( password.val() == '' ) {
				$('.error').fadeIn(1000);
				$('.error').text('Введите пароль');
				event.preventDefault();
				password.focus(function(event) {
					$('.error').fadeOut();
				});
			} else {
				// переходим на страницу профиля
				$('#registrationForm').submit();				
		}
	});
	*/

// ----- check lost password form ----- //
	$('.button--lost').on('click', function(e){
		e.preventDefault();
		input = $('.login-page-form__row').children('input');
		mail = $('.login-page-form__row').children('input[type=email]');		
		if ( mail.val() == '' ) {
			$('.error').fadeIn();
			$('.error').text('Введите email');
			input.focus(function(event) {
				$('.error').fadeOut();
			});		
		} else {
			// переходим на страницу профиля
			$('#lostForm').submit();
		}
	});	


// ----- check new password form ----- //
	$('.button--set-new-password').on('click', function(e){
		e.preventDefault();
		input = $('.login-page-form__row').children('input');
		password = $('.login-page-form__row').children('input[type=password]');		
		if ( password.val() == '' ) {
			$('.error').fadeIn();
			$('.error').text('Введите пароль');
			input.focus(function(event) {
				$('.error').fadeOut();
			});		
		} else {
			// переходим на страницу профиля
			$('#setNewPasswordForm').submit();
		}
	});		

	setTimeout(function(){
		$('[data-notify-hide]').slideUp(400);
	}, 2000);

	
	$('[data-notify-hide]').dblclick(function(){
		$(this).slideUp(400);
	});




});
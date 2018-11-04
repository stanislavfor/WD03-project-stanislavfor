<?php 

if ( isset($_POST['lost-password'])) {
	
	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email' ];
	}

	if ( empty($errors)) {

		$user = R::findOne('users', 'email = ?', array($_POST['email']) );

		if ( $user ) {

			// Генерация кода и сохранение кода в БД
			function random_str( $num = 30 ) {
				return substr(str_shuffle('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, $num);
			}
			$recovery_code = random_str(15);
			$user->recovery_code = $recovery_code;
			$user->recovery_code_times = 3;
			R::store($user);

			// Высылаем инструкции на почту
			$recovery_message = "<p>Код для сброса пароля: <b>$recovery_code</b></p>";
			$recovery_message .= "<p>Для сброса пароля перейдите по ссылке ниже, и установите новый пароль:</p>";
			$recovery_message .= '<p><a href="' . HOST;
			$recovery_message .= "set-new-password?email=" . $_POST['email'] . "&code=" . $recovery_code;
			$recovery_message .= '" target="_blank">';
			$recovery_message .= "Установить новый пароль</a></p>";

			$headers = 	"MIME-Version: 1.0" . PHP_EOL . 
									"Content-Type: text/html; charset=utf-8" . PHP_EOL .
									"From:" . adopt( SITE_NAME ) . "<" . SITE_EMAIL . " >" . PHP_EOL .
									"Reply-To:" . ADMIN_EMAIL;
			
			mail($_POST['email'], 'Восстановление доступа', $recovery_message, $headers);
			
			
			$success[] = [
					'title' => "Все отлично!" ,
					'desc' => "<p>Инструкция по восстановлению доступа выслана на {$_POST['email']}</p>" 
				];

		} else {
			$errors[] = ['title' => 'Этот email не зарегистрирован.' ];
		}

	}

}

	// Готовим контент для центральной части
ob_start();
include ROOT . "templates/login/form-lost-password.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>
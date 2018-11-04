<?php 
$title = "Профиль пользователя";


$currentUser = $_SESSION['logged_user'];
$posts = R::find('posts', 'ORDER BY id DESC');
$comments = R::find( 'comments', 'ORDER BY id DESC' );

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile.tpl";


$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
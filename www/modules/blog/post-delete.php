<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}

$title = "Удалить пост";
$post = R::load('posts', $_GET['id']);


if ( isset($_POST['postDelete']) ) {
	$postImgFolderLocation = ROOT . 'usercontent/blog/';
	$postImg = $post->post_img;
	if ( $postImg != "" ) {
		$picurl = $postImgFolderLocation . $postImg;
		// Удаляем пост
	    if ( file_exists($picurl) ) { unlink($picurl); }
		$picurl320 = $postImgFolderLocation . '320-' . $postImg;
	    if ( file_exists($picurl320) ) { unlink($picurl320); }
	}

	R::trash($post);
	header('Location: ' . HOST . "blog?result=postDeleted");
	exit();

}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
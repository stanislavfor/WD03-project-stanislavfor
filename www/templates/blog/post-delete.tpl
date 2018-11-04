<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить пост &#171;<?=$post['title']?>&#187; &#63;</div>

			<form action="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" method="POST" class="form mb-100 pb-20 pt-35">

				<div class="fieldset">
					<p>Вы действительно хотите удалить пост
						с id = <strong><?=$post['id']?></strong> &#63; <br><br>
						Название поста: <strong>&#171;<?=$post['title']?>&#187;</strong>
					</p>
				</div>		



				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="postDelete" class="button button--del" value="Удалить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog/post?id=<?=$post['id']?>">Отмена</a>
					</div>
				</div>
			</form>
			
		</div>
	</div>
</div>


<div class="container-edit">	
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Редактировать профиль</div>

				<?php 
					// echo "<pre>";
					// print_r($_POST);
					// echo "</pre>";
				 ?>
				 
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>


				<form enctype="multipart/form-data" action="<?=HOST?>profile-edit" method="POST" class="form mb-100 pb-20 pt-35">
					<div class="row fieldset">
						<div class="col-4">
							<label><div class="fieldset__title">Имя</div>
								<input name="name" class="input" placeholder="Введите имя" value="<?=@$currentUser->name?>" />
							</label>
						</div>
					</div>
					<div class="row fieldset">
						<div class="col-4">
							<label>
								<div class="fieldset__title">Фамилия</div>
								<input name="secondname" class="input" placeholder="Введите фамилию" value="<?=@$currentUser->secondname?>" />
							</label>
						</div>
					</div>
					<div class="row fieldset">
						<div class="col-4"><label><div class="fieldset__title">Email</div>
							<input name="email" class="input" type="email" placeholder="Введите email" value="<?=@$currentUser->email?>" /></label></div>
					</div>
					<div class="fieldset">
						<div class="fieldset__title">Фотография</div>
						<div class="comment-row">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
						<div class="control-row">
							<div class="file">
								<label class="file__label">
									<input class="file__input" name="avatar" type="file" />
									<span class="file__inner-label">Выбрать файл</span>
								</label>
							<span class="file__inner-caption">Файл не выбран</span>
							</div>
						</div>
					</div>
					<div class="row fieldset">
						<div class="col-4">
							<label>
								<div class="fieldset__title">Страна</div>
							<input class="input" name="country" placeholder="Введите страну"  value="<?=@$currentUser->country?>" />
							</label>
						</div>
					</div>
					<div class="row fieldset mb-30">
						<div class="col-4">
							<label>
								<div class="fieldset__title">Город</div>
								<input class="input" name="city" placeholder="Введите город" value="<?=@$currentUser->city?>" />
							</label>
						</div>
					</div>
					<div class="row">
						<div class="col-md-auto pr-10">
							<input class="button button--save" type="submit" name="profile-update" value="Сохранить" />
						</div>
						<div class="col-md-auto pl-10">
							<a class="button" href="<?=HOST?>profile">Отмена</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


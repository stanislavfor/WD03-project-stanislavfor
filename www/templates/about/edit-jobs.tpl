<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
				<div class="title-3 pt-30 mb-50">Опыт работы</div>

			<?php foreach ($jobs as $job) { ?>
				<?php include ROOT . "templates/about/_card-job-edit.tpl" ?>
			<?php } ?>				


			<form action="<?=HOST?>edit-jobs" method="POST">
				<div class="title-3 mt-50 mb-50">Добавить новое место работы (учёбы)</div>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>

				<div class="user-message">
					<div class="fieldset__title">Период</div>
					<input name="period" class="input mb-15" placeholder="Введите даты начала и окончания работы" value="<?=@$_POST['period']?>" />
					
					<div class="fieldset__title">Название должности</div>
					<input 	name="title" class="input mb-15" placeholder="Введите название должности" value="<?=@$_POST['title']?>" />
					<div class="fieldset__title">Описание работы, должностные обязанности, достигнутые результаты</div>
					<textarea name="description" class="textarea mb-20" rows="5" placeholder="Напишите интересное краткое содержательное описание"><?=@$_POST['description']?></textarea>
					
					<input type="submit" name="newJob" class="button button--save mb-50" value="Добавить">
				</div>
			</form>
			
		</div>
	</div>
</div>

<div class="container pb-60 pt-50">

	<?php
	if ( isset($_GET['result'])) {
		include ROOT . "templates/categories/_results.tpl";
	}	?>
	
	<div class="row justify-content-between align-items-center pl-15 pr-15">
			<div class="title-1">Категории блога</div>
			<div class="section-ui">
				<a class="button button--edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
			</div>
	</div>
	<table class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col">id</th>
				<th scope="col">Название</th>
				<th scope="col">Редактировать</th>
				<th scope="col">Удалить</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($cats as $cat): ?>
			<tr>
				<th>
					<?=$cat['id']?>
				</th>
				<td>
					<?=$cat['cat_title']?>
				</td>
				<td>
					<a href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a>
				</td>
				<td>
					<a href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a>
				</td>
			</tr>
			<?php endforeach ?>
		</tbody>

	</table>	
</div>

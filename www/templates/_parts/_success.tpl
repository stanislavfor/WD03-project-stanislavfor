<?php 
	foreach ($success as $item) {
		if ( count($item) == 1) {  ?>
			
			<!-- Однострочный контейнер с ошибкой -->
			<div class="error error--success">
				<?=$item['title']?>
			</div>

<?php 	} else if ( count($item) == 2 ) { ?>
			
			<!-- Контейнер с ошибкой с дополнительным описанием -->
			<div class="error-with-desc error--success">
				<?=$item['title']?>
			</div>
			<div class="error-with-desc-bottom">
				<?=$item['desc']?>
			</div>

<?php 
		}
	} 
?>
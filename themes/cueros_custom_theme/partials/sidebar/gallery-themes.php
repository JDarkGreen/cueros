<?php  
/***
* ---------------------------------------
* - ARCHIVO PARTIAL DE TEMAS DE GALERÍA
* ---------------------------------------
***/

global $post;

/*
 * Variable $gallery se encuentra en el archivo 
 * que incluye este partial
 */


$current_id = isset($id_current_actual) ? $id_current_actual : '';
#var_dump($current_id);

?>

<section class="widgetSidebar">
	
	<!-- Título -->
	<h2 class="title-sidebar text-uppercase"> <?= __(  'temas' , 'LANG' ); ?> </h2>
	
	<div class="content">

		<?php  
			/*
			 * Si Existen Galerías
			 */
			if( $galleries ) :
		?>
	
			<?php foreach( $galleries as $item ): ?>

				<a href="<?= get_permalink($item->ID); ?>" class="item-link <?= $item->ID === $current_id ? 'active' : '' ?>"> 
						
					<!-- Icono -->
					<!--i class="fa fa-chevron-right" aria-hidden="true"></i-->
					
					<!--  -->
					<?= $item->post_title; ?> 
				</a>

			<?php endforeach; ?>

		<?php endif; ?>
		
	</div> <!-- /.content -->

</section> <!-- /.widgetSidebar -->
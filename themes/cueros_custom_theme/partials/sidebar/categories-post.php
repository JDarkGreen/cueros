<?php  
/***
* ---------------------------------------
* - ARCHIVO PARTIAL DE CATEGORIAS DE POST
* ---------------------------------------
***/

global $post;


//Todas las categorias
$categorias = get_categories( array( 'hide_empty'=>false , 'parent' => 0 ) );

//
$current_id = isset($id_current_actual) ? $id_current_actual : '';

?>

<section class="widgetSidebar">
	
	<!-- Título -->
	<h2 class="title-sidebar text-uppercase"> <?= __(  'Categorías' , 'LANG' ); ?> </h2>
	
	<div class="content">
	
		<?php foreach( $categorias as $categoria ): ?>

			<a href="<?= get_term_link( $categoria ); ?>" class="item-link <?= $categoria->term_id === $current_id ? 'active' : '' ?>"> 
					
				<!-- Icono -->
				<!--i class="fa fa-chevron-right" aria-hidden="true"></i-->
				
				<!--  -->
				<?= $categoria->name; ?> 
			</a>

		<?php endforeach; ?>
		
	</div> <!-- /.content -->

</section> <!-- /.widgetSidebar -->
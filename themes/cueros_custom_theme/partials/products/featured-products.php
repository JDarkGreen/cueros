<?php  
/**
  * Archivo Partial que muestra los productos 
  * destacados de la web 
  */
?>

<!-- Titulo -->
<h2 class="titleCommon__section text-uppercase">
	<?= __( "productos destacados" , "LANG" ); ?>
</h2> <!-- /.titleCommon__section -->

<!-- Seccion de Productos -->
<div class="row">

	<?php  
		$args = array(
			"order"          => 'DESC',
			"orderby"        => 'date',
			"post_status"    => 'publish',
			"post_type"      => 'theme-producto',
			"posts_per_page" => $posts_per_page,
			"paged"          => $paged,

		);

		#Query 
		$the_query = new WP_Query( $args );

		if( $the_query->have_posts() ) :
		#Mientras
		while( $the_query->have_posts() ) : $the_query->the_post();
	?>
		<!-- Item preview de producto -->
		<div class="col-xs-12 col-sm-4">

			<article class="itemPreview__producto text-xs-center">
				<!-- Enlace al producto -->
				<a href="<?= get_permalink( get_the_ID() ); ?>">
					<!-- Imagen -->
					<figure>
						<?= get_the_post_thumbnail( get_the_ID() , 'full' , array("class"=>'img-fluid m-x-auto') ); ?>
					</figure> <!-- /.figure -->
				</a>
				<!-- Nombre corto -->
				<h2> <?= get_the_title(); ?> </h2>

				<!-- Codigo de Producto -->
				<p class="product-code">
					<strong> <?= get_post_meta( get_the_ID() , 'mb_code_product_text' , true ); ?> </strong>
				</p>
				<!-- Precio regular del producto -->
				<p class="product-price">
					<?= get_post_meta( get_the_ID() , 'mb_price_product_text' , true ); ?>
				</p>

				<!-- Saltos de Línea --> <br>

				<!-- Botón Comprar -->
				<a href="<?= get_permalink(); ?>" class="btn__buy text-uppercase">ver detalle</a>

			</article><!-- /.itemPreview__producto text-xs-center -->

		</div> <!-- ./col-xs-12 col-sm-4 -->

	<?php endwhile; ?>

	<?php endif; ?>
	
</div> <!-- /row -->


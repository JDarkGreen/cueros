<?php  
/*
 * Archivo Partial que muestra carousel de los productos 
 * destacados de la web 
 */

$args = array(
	"order"          => 'DESC',
	"orderby"        => 'date',
	"post_status"    => 'publish',
	"post_type"      => 'theme-producto',
	"posts_per_page" => -1,
);

$featured_products = get_posts( $args );

?>

<div id="sectionFeaturedProducts" class="containerRelative">
	
	<!-- Titulo -->
	<h2 class="titleCommon__section text-uppercase">
		<?= __( "productos destacados" , "LANG" ); ?>
	</h2> <!-- /.titleCommon__section -->
	
	<?php  
		/*
		 * Si hay posts y son igual o más de 2 
		 */
		if( $featured_products && count($featured_products) >= 2 ):
	?>

	<!-- Carousel de Productos Destacados -->
	<div id="carousel-featured-products" class="js-carousel-gallery" data-items="3" data-items-responsive="1" data-margins="36" data-dots="false" data-autoplay="true" data-timeautoplay="5000">
		
		<?php foreach( $featured_products as $featured_product ): ?>
		

			<article class="itemPreview__producto text-xs-center">
				<!-- Enlace al producto -->
				<a href="<?= get_permalink( $featured_product->ID ); ?>">
					<!-- Imagen -->
					<figure>
						<?= get_the_post_thumbnail( $featured_product->ID , 'full' , array("class"=>'img-fluid m-x-auto') ); ?>
					</figure> <!-- /.figure -->
				</a>
				<!-- Nombre corto -->
				<h2> <?= get_the_title(); ?> </h2>
				<!-- Codigo de Producto -->
				<p class="product-code">
					<strong></strong>
				</p>
				<!-- Precio regular del producto -->
				<p class="product-price">
				</p>

				<!-- Saltos de Línea --> <br>

				<!-- Botón Comprar -->
				<a href="#" class="btn__buy text-uppercase">comprar</a>

			</article><!-- /.itemPreview__producto text-xs-center -->

		<?php endforeach; ?>
	
	</div> <!-- /.carousel-featured-products  -->
	
	<!-- Fleachas de Carousel -->
	<div class="container-arrows">
		<!-- Flecha -->
		<a href="#" class="arrow-product arrow-prev js-carousel-prev" data-slider="carousel-featured-products">
			<i class="fa fa-angle-left" aria-hidden="true"></i>
		</a>		
		<!-- Flecha -->
		<a href="#" class="arrow-product arrow-next js-carousel-next" data-slider="carousel-featured-products">
			<i class="fa fa-angle-right" aria-hidden="true"></i>
		</a>
	</div> <!-- /.container-arrows -->

	<?php else: ?>

	<?php endif; ?>

</div> <!-- /.containerRelative -->





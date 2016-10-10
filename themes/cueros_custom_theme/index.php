<!-- Header -->
<?php 
	get_header(); 

	# Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	#Posts de productos por página
	$posts_per_page = 9;

	#Variable de paginación
	$paged = get_query_var('paged') ? get_query_var('paged') : 1;
?>

<?php  
/*
 * Incluir plantilla de Slider Home
 */
include(locate_template("partials/slider-home/slider-home-revolution.php"));

/*
 * Incluir template de sección delivery
 */
include(locate_template("partials/section-common-delivery.php"));


?>



<!-- ESPACIO --> <br><br>

<!-- Wrapper de Contenido -->
<div class="pageWrapperLayout">
	
	<div class="row">
		
		<!-- SECCION DE PRODUCTOS -->
		<div class="col-xs-12 col-sm-9">
			
		<?php  
			/**
			  * Incluir template de productos destacados
			  */
			include(locate_template('partials/products/featured-products.php'));
		?>
	
		</div> <!-- /.col-xs-12 col-sm-9 -->


		<!-- SIDEBAR -->
		<div class="col-xs-12 col-sm-3">
			<?php  
			/**
			  * Incluir template de categorias
			  */
				include_once(locate_template("partials/sidebar/categories-product.php"));
			?>

			<!-- Espacio --> <br/>
			
			<!-- Galerias Link -->
			<?php  
				$args = array(
					'orderby'        => 'rand',
					'post_type'      => 'theme-gallery-images',
					'posts_per_page' => 1,
				);
				$random_gallery = get_posts( $args );

				if( $random_gallery ) :

				$random_gallery = $random_gallery[0];
			?>	
			<section>
				<h2 class="titleCommon__section text-uppercase"><?= __('galerias' , 'LANG' ); ?></h2>
				<!-- Imagen -->
				<?php
					$page_gallery = get_page_by_title("galeria");
					
					$image_gallery = has_post_thumbnail( $random_gallery->ID ) ? wp_get_attachment_url( get_post_thumbnail_id( $random_gallery->ID ) ) : IMAGES . '/default_gallery.jpg';
				?>
				<a href="<?= !empty($page_gallery) ? get_permalink($page_gallery->ID) : '#' ?>">
					<img src="<?= $image_gallery; ?>" alt="galerias-cueros-productos" class="img-fluid d-block m-x-auto" />
				</a>

			</section>

			<?php endif; ?>

			<!-- Espacio --> <br/>

			<?php  
			/**
			  * Incluir template de fan page facebook
			  */
				$facebook_link = "https://www.facebook.com/Ingenioartweb/";
				include_once(locate_template("partials/sidebar/section-facebook.php"));
			?>

		</div> <!-- /.col-xs-12 col-sm-3 -->

	</div> <!-- /.row -->

	<!-- Linea Separadora -->
	<div id="separator-line"></div>

</div> <!-- /.pageWrapperLayout -->


<?php  
/**
  * Incluir template sección miscelaneo
  */
	include(locate_template('partials/home/section-miscelaneo.php'));
?>

<!-- Footer -->
<?php get_footer(); ?>

<?php /*Template Name: Página Servicios - Plantilla */ ?>
<?php  

/**
  * Objecto Actual
  */
global $post;

/*
 * Mostrar Header
 */
get_header();

/*
 * Opciones de Personalización
 */
$options = get_option("theme_settings");

/*
 * Variable para Template banner de página
 */
$banner = $post;

include(locate_template('partials/banner-top-page.php'));

?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout">

	<!-- Contenedor Página : Servicios -->
	<div id="pageServicios" class="pageWithGallery">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<!-- Texto -->
				<?= apply_filters( 'the_content' , $post->post_content ); ?>
				
			</div> <!-- /.col-xs-12 col-sm-8 -->

			<!-- Galería de Imágenes -->
			<div class="col-xs-12 col-sm-4">

				<?php  
					/*
					 * Obtener galería de Imágenes
					 */
					$gallery_servicios = get_gallery_post( $post->ID );

					if( $gallery_servicios ):
				?>
				
				<!-- Carousel Galeria  -->
				<div id="carousel-services" class="js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="10" data-dots="true" data-autoplay="true" data-timeautoplay="5000">

				<?php foreach( $gallery_servicios as $image ): ?>

					<figure class="itemImage">
						<a href="<?= $image->guid; ?>" class="gallery-fancybox" rel="group1">
							<img src="<?= $image->guid; ?>" alt="<?= $image->post_content; ?>" class="img-fluid d-block m-x-auto" />
						</a>
					</figure> <!-- /.itemImageNosotros -->

				<?php endforeach; ?>

				</div> <!-- /#carousel-nosotros -->

				<?php endif; ?>

			</div> <!-- /.col-xs-12 col-sm-4 -->
			

		</div> <!-- /.row -->
		
	</div> <!-- /.pageNosotros -->

	<!-- Linea Separadora --><div id="separator-line"></div>

</div> <!-- /.pageWrapperLayout -->

<?php  

/*
 * Incluir template de sección delivery
 */
	include(locate_template("partials/section-common-delivery.php"));

/*
 * Incluir template sección miscelaneo
 */
	include(locate_template('partials/home/section-miscelaneo.php'));
?>

<!-- Footer -->
<?php get_footer(); ?>

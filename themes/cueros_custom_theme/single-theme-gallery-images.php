<?php /*Single Name: Single Galería - Plantilla */ ?>
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
$banner = get_page_by_title('galeria');

include(locate_template('partials/banner-top-page.php'));

/*
 * Obtener Las Galerías Respectivas
 */
$args = array(
	'order'          => 'ASC',
	'orderby'        => 'menu_order',
	'post_status'    => 'publish',
	'post_type'      => 'theme-gallery-images',
	'posts_per_page' => -1,
);

$galleries = get_posts( $args );

/*
 * Id actual de Post
 */
$id_current_actual = $post->ID;


?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout">

	<!-- Contenedor Página :  -->
	<div id="pageGallery">

		<div class="row">

			<!-- Sidebar -->
			<div class="col-xs-12 col-sm-4">

				<aside>
					
					<?php 
						if( $galleries ) : 
						/*
						 * Incluir template partial de Galerías
						 */
						include(locate_template('partials/sidebar/gallery-themes.php'));
						endif;

						echo '<br/><br/>';

						/*
						 * Incluir template de fan page facebook
						 */
						$facebook_link = "https://www.facebook.com/Ingenioartweb/";
						include_once(locate_template("partials/sidebar/section-facebook.php"));
					?>

				</aside> <!-- /end of aside -->
				
			</div> <!-- /.col-xs-12 col-sm-4 -->

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<div class="containerSectionGallery">
		
					<!-- Título -->
					<h2 class="title-gallery text-uppercase">
						<strong>
							<?= __(  $post->post_title , LANG ); ?>
						</strong>
					</h2>

					<!-- Texto -->
					<?= apply_filters( 'the_content' , $post->post_content ); ?>

					<!-- Galería de Imágenes -->
					<?php  
						/*
						 * Comprobar si hay galería de Imágenes
						 */
						$mb_gallery_images = get_gallery_post($post->ID);
						if( $mb_gallery_images ):
					?>

						<!-- Espacio --> <br/>

						<div class="containerFlex containerAlignContent">

						<?php foreach($mb_gallery_images as $item): ?>
							
							<?php  
								/*
								 * Url de Imágen
								 */
								$img_url = $item->guid;
							?>

							<!-- Figure -->
							<div class="itemGallery">
								
								<a href="<?= $img_url; ?>" class="gallery-fancybox d-block" title="<?= $item->post_content; ?>" rel="group">
								
								<figure style="background-image: url(<?= $img_url ?>)" >
								</figure> 
									
								</a><!-- /. -->
								
							</div><!-- /.itemGallery -->

						<?php endforeach; ?>
							
						</div> <!-- /.containerFlex containerAlignContent -->

					<?php else: ?>

						<div class="alert alert-warning" role="alert">
						  <strong>Ops!</strong> <?= __( 'No hay imágenes por el momento. Gracias por visitarnos' , LANG ); ?>
						</div>

					<?php endif; ?>
					
				</div> <!-- /.containerSectionGallery -->

			</div> <!-- /.col-xs-12 col-sm-8 -->
			
		</div> <!-- /.row -->
		
	</div> <!-- /. -->

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

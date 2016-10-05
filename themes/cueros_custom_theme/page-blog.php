<?php /*Template Name: Página Blog - Plantilla */ ?>
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

/*
 * Variables para paginación 
 */
$posts_per_page = 4;
$paged          = get_query_var('paged') ? get_query_var('paged') : 1;

/*
 *  Obtener los posts a mostrar
 */
$args = array(
	'order'          => 'DESC',
	'orderby'        => 'date',
	'paged'          => $paged,
	'post_status'    => 'publish',
	'post_type'      => 'post',
	'posts_per_page' => $posts_per_page,
);

$the_query = new WP_Query( $args );

?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout">

	<!-- Contenedor Página : Nosotros -->
	<div id="pageBlog">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<?php if( $the_query->have_posts() ): ?>
				
				<div class="containerRelative">
					
					<?php  
						/*
						 * Mostrar Articulos Recientes
						 */
					while( $the_query->have_posts() ): $the_query->the_post();
					?>

					<article class="itemBlogPreview">

						<!-- Imágen -->
						<?php  
							$feat_url = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id() ) : IMAGES . '/default_cueros.jpg';	
						?>

						<figure class="featured-image pull-sm-left" style="background-image : url( <?= $feat_url ?> )"></figure>
						
						<!-- Texto -->
						<div class="content-text">
							
							<h2> <?= get_the_title(); ?> </h2>

							<?php 
								$excerpt_text = wp_strip_all_tags( get_the_content() ); 
								$excerpt_text = wp_trim_words( $excerpt_text , 20 , '... ' );
							?>

							<!-- Párrafo Extracto -->
							<p> <?= $excerpt_text; ?> 
								<a href="<?= get_the_permalink(); ?>" class="link-to-post" title="<?= get_the_title(); ?>" > 
								<?= __( 'Leer más' , LANG ); ?>
								</a>
							</p>

						</div> <!-- /.content-text -->

						<!-- Limpiar floats --> 
						<div class="d-block clearfix"></div>
						
					</article> <!-- /.itemBlogPreview -->

					<?php endwhile; ?>
					
				</div> <!-- /.containerRelative -->

				<?php endif; wp_reset_postdata(); ?>

			</div> <!-- /.col-xs-12 col-sm-8 -->

			<!--  Sidebar -->
			<div class="col-xs-12 col-sm-4">


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

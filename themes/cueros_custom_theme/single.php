<?php /*Single Name: Página Blog */ ?>
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
$banner = get_page_by_title('blog');

include(locate_template('partials/banner-top-page.php'));

?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout">

	<!-- Contenedor Página : Nosotros -->
	<main id="mainSingleArticle">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">
				
				<!-- Título -->
				<div class="bg-danger">
	
					<h2 class="title-blog text-uppercase">
						<?= __( $post->post_title , LANG ); ?>
					</h2>

				</div> <!-- /.bg-danger -->

				<!-- Espacio --> <br />

				<!-- Imagen Destacada -->
				<figure class="featured-image">
					<?php if( has_post_thumbnail( $post->ID ) ): ?>

						<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid d-block') ); ?>

					<?php else: ?>

						<img src="<?= IMAGES ?>/default_cueros.jpg" alt="<?= $post->post_name; ?>" class="img-fluid d-block" />

					<?php endif; ?>
				</figure> <!-- /.featured-image -->

				<!-- Espacio --> <br />

				<?= apply_filters( 'the_content' , $post->post_content ); ?>

				<!-- Espacio --> <br />

				<!-- Compartir -->
				<h5 class="text-uppercase"> <b> Compartir: </b> </h5>
				<!-- Facebook -->
				<a href="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink($post->ID) ?>' , '_blank' , 'width=400 , height=500' ); void(0);"><i class="fa fa-facebook" aria-hidden="true"></i></a>

			</div> <!-- /.col-xs-12 col-sm-8 -->

			<!--  Sidebar -->
			<div class="col-xs-12 col-sm-4">

				<?php  
					/** 
					  * Incluir Template de Categorías
					  * de Post
					  */
					include(locate_template('partials/sidebar/categories-post.php'));
				?>


			</div> <!-- /.col-xs-12 col-sm-4 -->
			

		</div> <!-- /.row -->
		
	</main> <!-- /.mainArticle -->

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

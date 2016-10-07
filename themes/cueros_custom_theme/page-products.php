<?php /*Template Name: Página Producto - Plantilla */ ?>
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
$posts_per_page = 6;
$paged          = get_query_var('paged') ? get_query_var('paged') : 1;

/*
 *  Obtener los posts a mostrar
 */
$args = array(
	'order'          => 'DESC',
	'orderby'        => 'date',
	'paged'          => $paged,
	'post_status'    => 'publish',
	'post_type'      => 'theme-producto',
	'posts_per_page' => $posts_per_page,
);

$the_query = new WP_Query( $args );

?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout">

	<!-- Contenedor Página : Nosotros -->
	<div id="pageProducts">

		<div class="row">

			<!--  Sidebar -->
			<div class="col-xs-12 col-sm-4">

				<?php  
			      /*
			       * Incluir template de categorias
			       */
				include_once(locate_template("partials/sidebar/categories-product.php"));
				?>

			</div> <!-- /.col-xs-12 col-sm-4 -->

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<?php if( $the_query->have_posts() ): ?>
				
				<div class="row containerRelative">
					
					<?php  
						/*
						 * Mostrar Articulos Recientes
						 */
					while( $the_query->have_posts() ): $the_query->the_post();
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
								<strong></strong>
							</p>
							<!-- Precio regular del producto -->
							<p class="product-price">
							</p>

							<!-- Saltos de Línea --> <br>

							<!-- Botón Comprar -->
							<a href="#" class="btn__buy text-uppercase">comprar</a>

						</article><!-- /.itemPreview__producto text-xs-center -->

					</div> <!-- ./col-xs-12 col-sm-4 -->

					<?php endwhile; ?>
					
				</div> <!-- /.containerRelative -->

				<!-- Páginación -->
				<section class="sectionPagination text-xs-center">

					<?php $max_pages = $the_query->max_num_pages; ?>
					
					<?php for( $i = 1 ; $i <= $max_pages ; $i++ ) { ?>
					
					<!-- Link -->
					<a href="<?= get_pagenum_link($i); ?>" class="<?= $paged == $i ? 'active' : '' ?>"> <?= $i ?></a>

					<?php } ?>
					
					<!-- Next -->
					<a href="<?= get_pagenum_link($paged+1); ?>" class="<?= $paged == $max_pages ? 'disabled' : '' ?>" role="button" aria-disabled="<?= $paged == $max_pages ? 'true' : '' ?>">
						<!-- Icon --><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
					</a>
					
				</section> <!-- /.sectionPagination -->

				<?php endif; wp_reset_postdata(); ?>

			</div> <!-- /.col-xs-12 col-sm-8 -->

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

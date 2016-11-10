<?php 
/*
 * Template For Taxonomy : theme-producto
 * Plantilla para Taxonomía : 
 */

/*
 * Objecto Actual
 */
$current_term = get_queried_object();

//Taxonomía Actual
$the_taxonomy = $current_term->taxonomy;

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
$page_products = get_page_by_title('productos');
$banner        = $page_products;
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
	'tax_query' => array(
		array(
			'taxonomy' => $the_taxonomy,
			'field'    => 'slug',
			'terms'    => $current_term->slug,
		),
	),
);

$the_query = new WP_Query( $args ); ?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout">

	<!-- Contenedor Página : Nosotros -->
	<div id="pageProducts">

		<!-- Título -->
		<h2 class="titleCommon__section text-uppercase">
		<?= __( $current_term->name , LANG ); ?> </h2>

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-9">

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

				<?php else: ?>

					<div class="alert alert-danger alert-dismissible fade in" role="alert">
					  
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>

					  <strong>Ops!</strong> Por el momento este contenido se encuentra en mantenimiento. Puede visitar nuestras otras secciones. Gracias
					</div>

				<?php endif; wp_reset_postdata(); ?>

			</div> <!-- /.col-xs-12 col-sm-9 -->		

			<!--  Sidebar -->
			<div class="col-xs-12 col-sm-3">

				<?php  
			      /*
			       * Incluir template de categorias
			       */
				include_once(locate_template("partials/sidebar/categories-product.php"));
				?>

			</div> <!-- /.col-xs-12 col-sm-3 -->

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

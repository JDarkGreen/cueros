<?php /*Single Name: Página Producto */ ?>
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
$banner = get_page_by_title('productos');

include(locate_template('partials/banner-top-page.php')); ?>

<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout">

	<!-- Contenedor Página : Nosotros -->
	<div id="pageProducts">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-9">

				<!-- Main Article Product -->
				<main class="itemSingleProduct">

					<div class="row">
						
						<!-- Imágenes -->
						<div class="col-xs-12 col-sm-5">

							<?php  
								/*
								 * Comprobar si tiene galería de imágenes
								 * y si tiene mas de dos items
								 */
								$gallery_product = get_gallery_post($post->ID);

								if( $gallery_product && count($gallery_product) >= 2 ):
							?>
							
							<!-- Carousel Galeria   -->
							<div id="carousel-single-product" class="js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="10" data-dots="true" data-autoplay="true" data-timeautoplay="5000">
								
								<?php foreach( $gallery_product as $item ): ?>

									<figure class="featured-image containerFlex containerAlignContent">

										<a href="<?= $item->guid; ?>" class="gallery-fancybox" title="<?= $post->post_title; ?>" rel="group">

											<img src="<?= $item->guid; ?>" alt="<?= $item->post_content; ?>" class="img-fluid d-block m-x-auto" />

										</a>
									</figure> <!-- /.featured-image -->

								<?php endforeach; ?>

							</div> <!-- /#carousel-single-product -->

							<!-- Thumbnails de Carousel -->
							<section class="thumbnails-products containerFlex">
								
								<?php 
									$control = 0;
									foreach( $gallery_product as $item ): 
								?>
									<div class="thumbnails-product js-carousel-indicator" data-slider="carousel-single-product" data-to="<?= $control; ?>">

										<img src="<?= $item->guid; ?>" alt="<?= $item->post_content; ?>" class="img-fluid d-block m-x-auto" />

									</div>
								<?php $control++ ; endforeach; ?>	
								
							</section> <!-- /.thumbnails-product -->

							<?php else: ?>

								<?php  
									/*
									 * Ruta Imágen Destacada
									 */
									$feat_img = has_post_thumbnail($post->ID) ? wp_get_attachment_url(get_post_thumbnail_id($post->ID)) : IMAGES . '/default_cueros.jpg';
								?>

								<figure class="featured-image">
									<img src="<?= $feat_img ?>" alt="<?= $post->post_name ?>" class="img-fluid d-block m-x-auto" />
								</figure> <!-- /.featured-image -->

							<?php endif; ?>
							
						</div> <!-- /.col-xs-12 col-sm-5 -->

						<!-- Contenido -->
						<div class="col-xs-12 col-sm-7">

							<!-- Título -->
							<h2 class="title-product">
								<?= __( $post->post_title , LANG ); ?>
							</h2>

							<!-- Precio -->
							<p class="price">
							<?php $mb_price = get_post_meta( $post->ID , 'mb_price_product_text' , true); 
								echo !empty($mb_price) ? $mb_price : ''; 
							?>
							</p>

							<!-- Contenido o Descripción -->
							<div class="content-description">
								<?= apply_filters( 'the_content' , $post->post_content ); ?>
							</div> <!-- /.content-description -->

							<!-- Espacio --> <br/><br/>

							<!-- Categorías -->
							<p class="information"> <?= __('Categorías: ', LANG); ?>
								<span>
								<?php  
									$defaults = array('fields' => 'names');
									$cats     = wp_get_post_terms( $post->ID , 'producto_category' , $defaults );

									if($cats): for ( $i = 0 ; $i < count($cats) ; $i++ ) { 
										$split = $i !== 0 ? ', ' : '';
										echo $split . __( $cats[$i] , LANG ); 
									}
									endif;
								?>
								</span>
							</p>

							<!-- Tags -->
							<p class="information"> <?= __('Etiquetas: ', LANG); ?>
								<span>
								<?php  
									$defaults = array('fields' => 'names');
									$tags = wp_get_post_tags( $post->ID , $defaults );

									if($tags): for ( $i = 0 ; $i < count($tags) ; $i++ ) { 
										$split = $i !== 0 ? ', ' : '';
										echo $split . __( $tags[$i] , LANG ); 
									}
									endif;
								?>
								</span>
							</p>
							
						</div> <!-- /.col-xs-12 col-sm-7 -->

					</div> <!-- /.row -->
					
				</main> <!-- /.itemSingleProduct -->

				<!-- Linea Separadora -->
				<div id="separator-line"></div>

				<?php  
					/*
					 * Importar Template Carousel Productos
					 * Destacados
					 */
					include(locate_template('partials/products/carousel-featured-products.php'));
				?>

			</div> <!-- /.col-xs-12 col-sm-9 -->

			<!--  Sidebar -->
			<div class="col-xs-12 col-sm-3">

				<?php  
			      /*
			       * Incluir template de categorias
			       */
				include_once(locate_template("partials/sidebar/categories-product.php"));

				echo '<br><br>';

				 /*
				  * Incluir template de fan page facebook
				  */
				$facebook_link = "https://www.facebook.com/Ingenioartweb/";
				include_once(locate_template("partials/sidebar/section-facebook.php"));
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

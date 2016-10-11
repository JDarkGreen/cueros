<?php  /**
* Plantila Slider Home modificado para trabajar con libreria 
* SLIDER REVOLUTION
**/

	// The Query
	$args = array(
		'order'          => 'ASC',
		'orderby'        => 'menu_order',
		'post_status'    => 'publish',
		'post_type'      => 'slider-home',
		'posts_per_page' => -1,
	);

	$the_query = new WP_Query( $args );

	//Control Loop
	$i = $j = $k = 0;

	// The Loop
	if ( $the_query->have_posts() ) : 
?>

<!-- Contenedor de bannner para responsive no full width  -->
<div id="" class="banner-container containerRelative"> <span class="Apple-tab-span"> </span>

	<!-- Contenedor Wrapper for sliders -->
	<section id="carousel-home" class="pageInicio__slider containerRelative">

		<ul style="padding:0; margin: 0; list-style-type:none;">

		<?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>

			<?php
				#Extraer transición por slider o dejarlo por defecto
				$transition = get_post_meta( get_the_ID() , 'mb_revslider_select' , true );
				$transition = !empty($transition) ? $transition : 'boxslide';
			?>
			
			<li class="item-slider" data-transition="<?= $transition ?>" data-slotamount="10">

				<!-- Imagen Destacada -->
				<?php if( has_post_thumbnail() ) :  

					$feat_image = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID() ) );
				?>

					<!-- Visible en Desktop -->
					<div class="m-x-auto hidden-xs-down">
						<?php the_post_thumbnail('full', array('class'=>'img-fluid') ); ?>
					</div> <!-- /. -->

					<!-- Visible en Mobile -->
					<div class="m-x-auto hidden-sm-up">
						<figure class="featured-image-slider" style="background-image: url( <?= $feat_image; ?> )"></figure>
					</div> <!-- /. -->

				<?php endif; ?>
				
				<!-- Caption Titulo -->
				<div class="caption sft big_white" data-x="0" data-y="110" data-speed="3000" data-start="900" data-easing="easeOutBack">
					<section class="pageInicio__slider__content">

						<h2 class="text-uppercase">
							<?php _e( get_the_title() , LANG ); ?>
						</h2> <!-- /.pageInicio__slider__title -->

						<h3 class="text-capitalize text-xs-center subtitle">
							<?php _e( get_the_content() , LANG ); ?>
						</h3> <!-- /.pageInicio__slider__title -->

						<?php  
							/*
							 * Página de Productos
							 */
							$page_products = get_page_by_title('productos');
							$page_products_link = !empty($page_products) ? get_permalink($page_products->ID) : '#';
						?>
						<div class="text-xs-center">
							
							<a href="<?= $page_products_link ?>" class="btnCommon__show-more text-uppercase">
								<?= __( 'ver productos' , LANG ); ?>
							</a>
							
						</div> 	<!-- /.text-xs-center -->

					</section> <!-- /.pageInicio__slider__content -->
				</div> <!-- /.caption sft big_white -->	

			</li> <!-- /.item-slider -->
			
		<?php $i++; endwhile; ?>

		</ul> <!-- /. ul -  -->
	</section> <!-- /.carousel-home -->


	<?php /*
	<!-- Flechas de Carousel -->
	<section id="pageInicio__slider__arrows" class="pageInicio__slider__arrows">
		<!-- Izquierda -->
		<a href="#" data-slider="carousel-home" data-move="prev" class="arrow-prev">
			<!-- Icon --> <i class="fa fa-angle-left" aria-hidden="true"></i>
		</a>
		<!-- Derecha -->
		<a href="#" data-slider="carousel-home" data-move="next" class="arrow-next">
			<!-- Icon --> <i class="fa fa-angle-right" aria-hidden="true"></i>
		</a>
	</section> <!-- /.pageInicio__slider__arrows -->

	<!-- Dots o indicadores -->
	<section id="pageInicio__slider__dots" class="pageInicio__slider__dots text-xs-center">
		<?php
			//variable j  
			while( $the_query->have_posts() ) : $the_query->the_post(); ?>
			<a href="#" data-slider="carousel-home" data-dot="<?= $j + 1; ?>"></a>
		<?php $j++; endwhile; wp_reset_postdata(); ?>
	</section> <!-- /.pageInicio__slider__dots -->
	*/ ?>


</div> <!-- /.banner-container relative -->



<?php endif; ?>
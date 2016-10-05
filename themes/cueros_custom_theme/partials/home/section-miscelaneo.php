<?php  
/** 
  * Archivo partial que incluye la sección de miscelaneo
  * el blog y los videos
  */
?>

<!-- Section -->
<section class="sectionMiscelaneo">
	
	<!-- Wrapper de Contenido -->
	<div class="pageWrapperLayout">

		<div class="row">
			
			<!-- Blog -->
			<div class="col-xs-12 col-sm-6">
				
				<!-- Título -->
				<h2 class="titleCommon__section text-uppercase">
					<?= __('blog'); ?>
				</h2>

				<?php  
					/**
					  * Obtener 2 post de forma ramdom
					  */
					$args = array(
						'orderby'        => 'rand', 
						'post_status'    => 'publish',
						'post_type'      => 'post',
						'posts_per_page' => 2, 
					);
					$entradas = get_posts( $args );

					foreach( $entradas as $entrada ):
				?>
					
				<!-- Item Preview -->
				<article class="itemPreviewPost containerFlex containerAlignContent">
					
					<!-- Imagen -->
					<?php  
						$img_url = has_post_thumbnail($entrada->ID) ? wp_get_attachment_url( get_post_thumbnail_id($entrada->ID)) : IMAGES . '/default_cueros.jpg';
					?>
					<a href="<?= get_permalink($entrada->ID); ?>" title="<?= $entrada->post_title ?>" class="link-to-post">
						<figure class="featured-image" style="background-image: url(<?= $img_url; ?>)">
						</figure> <!-- /.featured-image -->
					</a>

					<div class="content-text">
						
						<!-- Titulo -->
						<h3 class="text-capitalize">
							<a href="<?= get_permalink($entrada->ID); ?>" title="<?= $entrada->post_title ?>">
							<?= __($entrada->post_title,LANG); ?></a>
						</h3>

						<?php  
							$excerpt_text = wp_trim_words( $entrada->post_content , 40 , '...' );
							echo apply_filters( 'the_content' , $excerpt_text  );
						?>

					</div> <!-- /.content-text -->

				</article> <!-- /.itemPreviewPost -->

				<?php endforeach; ?>
			</div> <!-- /.col-xs-12 col-sm-6 -->

			<!-- Videos -->
			<div class="col-xs-12 col-sm-6">
				
				<!-- Título -->
				<h2 class="titleCommon__section text-uppercase">
					<?= __('videos'); ?>
				</h2>

				<?php  
					/**
					  * Obtener 1 video ramdom
					  */
					$args = array(
						'orderby'        => 'rand', 
						'post_status'    => 'publish',
						'post_type'      => 'theme-gallery-video',
						'posts_per_page' => 1, 
					);
					$videos = get_posts( $args );
					
					if( $videos ) :

					$video  = $videos[0];

				?>

				<!-- Video Frame -->
				<?php 
					$link_video = $video->post_content;
					$link_video = str_replace( 'watch?v=' , 'embed/' , $link_video);
				?> 
				<iframe id="iframe-video" src="<?= $link_video; ?>" frameborder="0" allowfullscreen>
				</iframe>

				<?php endif; ?>

			</div> <!-- /.col-xs-12 col-sm-6 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.pageWrapperLayout -->

</section> <!-- /.sectionMiscelaneo -->
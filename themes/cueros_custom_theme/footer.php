<?php  
/**
* Archivo Footer 
**/

#Obtener las opciones de personalización
$options = get_option( 'theme_settings' );

?>	

	<footer id="mainFooter">

		<!-- Wrapper de Contenido -->
		<div class="pageWrapperLayout">

			<div class="row">
				
				<!-- Logo -->
				<div class="col-xs-12 col-sm-3 mainFooter__item containerFlex containerAlignContent">
				
					<!-- Logo -->
					<h1 id="logoFooter">
						<a href="<?= site_url(); ?>" class="center-block">
							<img src="<?= IMAGES ?>/logo_cueros_artesania_blanco.png" alt="portada-cueros-web" class="img-fluid m-x-auto" />
						</a>
					</h1> <!-- /.logoFooter -->

				</div> <!-- /.col-xs-12 col-sm-3 -->


				<!-- Datos -->
				<div class="col-xs-12 col-sm-6 mainFooter__item">
					
					<div class="content-item">

						<!-- Título -->
						<h3 class="title-footer text-uppercase text-xs-center text-sm-left"> <?= __('datos:',LANG); ?> </h3>

						<!-- Menú de Datos -->
						<ul id="mainFooter__list-data">

							<!-- Dirección -->
							<?php $address = isset($options['theme_address_text']) ? $options['theme_address_text'] : ''; ?>
							<li>
								<!-- Icono -->
								<i class="fa fa-map-marker" aria-hidden="true"></i>
								<span> <?= $address; ?></span>
							</li> <!-- /. -->

							<!-- Teléfono -->
							<li class="">
								<!-- Icono -->
								<i class="fa fa-mobile icon-mobile" aria-hidden="true"></i>
								<span>
									<?php for ($i = 1; $i <= 2 ; $i++) 
									{ 
										$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';
										$split = $i !== 1 && $phone !== '' ? ' - ' : '';

										echo $split . $phone; 
									} 
									?>
								</span>
							</li> <!-- /. -->

							<!-- Email -->
							<?php $email = isset($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?>
							<li>
								<!-- Icono -->
								<i class="fa fa-envelope" aria-hidden="true"></i>
								<span> <?= $email; ?></span>
							</li> <!-- /. -->
							
						</ul> <!-- /#mainFooter__list-data -->
						
					</div> <!-- /.content-item --> 	

				</div> <!-- /.col-xs-12 col-sm-6 -->

				<!-- Redes Sociales -->
				<div class="col-xs-12 col-sm-3 mainFooter__item">

					<div class="content-item">

						<!-- Título -->
						<h3 class="title-footer text-uppercase text-xs-center text-sm-left"> <?= __('redes sociales:',LANG); ?> </h3>
				
					<?php  
						/**
						  * Incluir template redes sociales footer
						  */
						include(locate_template('partials/footer/social-links.php'));
					?>

					</div> <!-- /.content-item -->
					
				</div> <!-- /.col-xs-12 col-sm-3 mainFooter__item -->

			</div> <!-- /.row -->

		</div> <!-- /.pageWrapperLayout -->

	</footer> <!-- /.mainFooter -->

	<!-- Sección Desarrollo -->
	<?php  
		include(locate_template('partials/footer/section-develop.php'));
	?>

	<script> var url = "<?= THEMEROOT ?>"; </script>

	<?php wp_footer(); ?>

	<!-- Loader -->
	 <script type="text/javascript">
	 	var j = jQuery.noConflict();

        j("#fakeLoader").fakeLoader({
    
			timeToHide: 1200, //Time in milliseconds for fakeLoader disappear
			zIndex    : 9999, // Default zIndex
			spinner   : "spinner7",//Options: 'spinner1', 'spinner2', 'spinner3', 'spinner4', 'spinner5', 'spinner6', 'spinner7' 
			bgColor   : "#A70008", //Hex, RGB or RGBA colors
   		});
    </script>


</body>
</html>


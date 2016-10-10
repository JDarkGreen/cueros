<?php /*Template Name: Página Contacto - Plantilla */ ?>
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

	<!-- Contenedor Página : Contacto -->
	<div id="pageContacto" class="">

		<div class="row">
			
			<div class="col-xs-12 col-sm-6">
	
				<!-- SECCIÓN DE DATOS  -->
				<section class="pageContact__data">

					<!-- Titulo  --> 
					<h2 class="text-uppercase titleCommon__section"> 
						<?php _e( "datos" , LANG ); ?> 
					</h2>

					<!-- Lista de Datos -->
					<?php
						#Clase Variable  
						$menu_class = 'menu-contacto';
						#Incluir partial lista de datos
						include( locate_template("partials/footer/menu-list-data.php") );
					?>

				</section> <!-- /.pageContact__data -->

				<!-- Espacios -->
				<div class="">
					<br /><br /><br />
				</div> <!--  -->

				<!-- SECCIÓN DE REDES SOCIALES  -->
				<section class="pageContact__social">

					<!-- Titulo  --> 
					<h2 class="text-uppercase titleCommon__section"> 
						<?php _e( "redes sociales" , LANG ); ?> 
					</h2>

					<?php  
						/*
						 * Incluir Template Partial de 
						 * redes sociales 
						 */
						$menu_class = 'page-contact-social-links';

						include(locate_template('partials/footer/social-links.php'));
					?>

				</section> <!-- /. -->
				
			</div> <!-- /.col-xs-12 col-sm- -->

			<div class="col-xs-12 col-sm-6">

				<!-- SECCIÓN DE REDES SOCIALES  -->
				<section class="pageContact__formulary">

					<!-- Titulo  --> 
					<h2 class="text-uppercase titleCommon__section"> 
						<?php _e( "formulario" , LANG ); ?> 
					</h2>

					<!-- Subtítulo -->
					<div class="subtitle">
						<?= !empty($post->post_content) ? apply_filters('the_content',$post->post_content) : apply_filters('the_content','Si tiene alguna pregunta relacionada con su pedido, sugerencias o comentarios, por favor no dude en comunicarse con nosotros que lo atenderemos con mucho gusto. Gracias por confiar en nosotros.'); ?>
					</div> <!-- /.subtitle -->

					<!-- Espacio --> <br />

					<!-- Limpiar floats --><div class="clearfix"></div>

					<!-- Formulario -->
					<form id="form-contacto" action="" class="pageContacto__form" method="POST">

						<div class="row">
							
							<div class="col-xs-12 col-sm-6">

								<!-- Nombre -->
								<div class="pageContacto__form__group">
									<label for="input_name" class="sr-only"></label>
									<input type="text" id="input_name" name="input_name" placeholder="<?php _e( 'Nombres', LANG ); ?>" required />
								</div> <!-- /.pageContacto__form__group -->

							</div> <!-- /.col-xs-12 col-sm-6 -->

							<div class="col-xs-12 col-sm-6">
							
								<div class="pageContacto__form__group">
									<label for="input_lastname" class="sr-only"></label>
									<input type="text" id="input_lastname" name="input_lastname" placeholder="<?php _e( 'Apellidos', LANG ); ?>" required />
								</div> <!-- /.pageContacto__form__group -->
							
							</div> <!-- /.col-xs-12 col-sm-6 -->

						</div> <!-- /.row -->

						<div class="row">

							<div class="col-xs-12 col-sm-6">
		
								<!-- Email -->
								<div class="pageContacto__form__group">
									<label for="input_email" class="sr-only"></label>
									<input type="email" id="input_email" name="input_email" placeholder="<?php _e( 'E-mail', LANG ); ?>" data-parsley-trigger="change" required="" data-parsley-type-message="Escribe un email válido"/>
								</div> <!-- /.pageContacto__form__group -->						
								
							</div> <!-- /.col-xs-12 col-sm-6 -->
							
							<div class="col-xs-12 col-sm-6">

								<!-- Teléfono -->
								<div class="pageContacto__form__group">
									<label for="input_phone" class="sr-only"></label>
									<input type="text" id="input_phone" name="input_phone" placeholder="Teléfono" data-parsley-type='digits' data-parsley-type-message="Solo debe contener números" required="" />
								</div> <!-- /.pageContacto__form__group -->
								
							</div><!-- /.col-xs-12 col-sm-6 -->
							
						</div> <!-- /.row -->

						<!-- Asunto -->
						<div class="pageContacto__form__group">
							<label for="input_subject" class="sr-only"></label>
							<input type="text" id="input_subject" name="input_subject" placeholder="<?php _e( 'Asunto a tratar', LANG ); ?>" required />
						</div> <!-- /.pageContacto__form__group -->

						<!-- Texto -->
						<div class="pageContacto__form__group">
							<label for="input_message" class="sr-only"></label>
							<textarea name="input_message" id="input_message" placeholder="<?php _e( 'Su Mensaje', LANG ); ?>" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="400" data-parsley-minlength-message="Necesitas más de 20 caracteres" data-parsley-validation-threshold="10"></textarea>
						</div> <!-- /.pageContacto__form__group -->

						<button type="submit" id="send-form" class="btnCommon__show-more text-uppercase">
							<?php _e( 'enviar' , LANG ); ?>
						</button> <!-- /.btn__send-form -->

						<!-- Limpiar Floats  --> <div class="clearfix"></div>

					</form> <!-- /.pageContacto__form -->

				</section> <!-- /. -->				

			</div> <!-- /.col-xs-12 col-sm-6 -->

		</div> <!-- /.row -->

	</div> <!-- #pageContacto -->

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

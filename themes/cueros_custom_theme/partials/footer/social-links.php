<?php  
/*
 * Archivo Partial que muestra las redes sociales 
 * si están disponibles 
 * version 1.0
 */

/**
  * Funciones requeridas
  * son las que estan en la carpeta functions/custom-functions/social-links 
  */

/*
 * Clase modificadora del menú
 */
$menu_class = isset($menu_class) ? $menu_class : '';

?>

<!-- Limpiar Floats -->
<div class="d-block clearfix"></div>

<!-- Menu de redes sociales -->
<ul id="mainFooter__social-data" class="text-xs-center <?= $menu_class; ?>"> 	

<?php  
/**
  * Si Esta seteado facebook
  */
if( has_facebook() ):
?>

<li>
	<a href="<?= get_facebook(); ?>" target="_blank"> 
	<i class="fa fa-facebook" aria-hidden="true"></i> </a>
</li>

<?php endif; ?>


<?php  
/**
  * Si Esta seteado Twitter
  */
if( has_twitter() ):
?>

<li>
	<a href="<?= get_twitter(); ?>" target="_blank"> 
	<i class="fa fa-twitter" aria-hidden="true"></i> </a>
</li>

<?php endif; ?>


<?php  
/**
  * Si Esta seteado Youtube
  */
if( has_youtube() ):
?>

<li>
	<a href="<?= get_youtube(); ?>" target="_blank"> 
	<i class="fa fa-youtube" aria-hidden="true"></i></a>
</li>

<?php endif; ?>


</ul> <!-- /#mainFooter__social-data -->
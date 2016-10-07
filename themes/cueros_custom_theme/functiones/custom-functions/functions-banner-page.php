<?php  
/**
  * Archivo que incluye funciones personalizadas de 
  * páginas de wordpress
  */


/**
* Definir si existe banner de página
**/
function has_banner_page( $page_id )
{
	global $options;

	$mb_banner_page = get_post_meta( $page_id , 'mb_featured_banner' , true );

	if( !empty($mb_banner_page) ) :
		return true;
	endif;
}

/**
* Conseguir banner de página
**/
function get_banner_page( $page_id = null )
{
	global $options;

	if( has_banner_page( $page_id ) ) :
		
		return get_post_meta( $page_id , 'mb_featured_banner' , true );
	else:
		return IMAGES . '/default_banner_top.jpg';
	endif;
}
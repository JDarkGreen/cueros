<?php  
/** 
* Archivo contiene los nuevos tipos de post registrados
**/

function create_post_type(){

	/*|-----SLIDER HOME ----------------------|*/
	
	$labels = array(
		'name'               => __('Slider Home'),
		'singular_name'      => __('Slider'),
		'add_new'            => __('Nuevo Slider'),
		'add_new_item'       => __('Agregar nuevo Slider Principal'),
		'edit_item'          => __('Editar Slider'),
		'view_item'          => __('Ver Slider'),
		'search_items'       => __('Buscar Slider'),
		'not_found'          => __('Slider no encontrado'),
		'not_found_in_trash' => __('Slider no encontrado en la papelera'),
	);

	$args = array(
		'labels'      => $labels,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => true,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'show_ui' => true,
		'taxonomies'  => array('post-tag','banner_category'),
		'menu_icon'   => 'dashicons-nametag',
	);

	/*|-----PRODUCTOS ----------------------|*/
	
	$labels_producto = array(
		'name'               => __('Productos'),
		'singular_name'      => __('Producto'),
		'add_new'            => __('Nuevo Producto'),
		'add_new_item'       => __('Agregar nuevo Producto'),
		'edit_item'          => __('Editar Producto'),
		'view_item'          => __('Ver Producto'),
		'search_items'       => __('Buscar Productos'),
		'not_found'          => __('Producto no encontrado'),
		'not_found_in_trash' => __('Producto no encontrado en la papelera'),
	);

	$args_producto = array(
		'labels'      => $labels_producto,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => false,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes' ),
		'show_ui' => true,
		'taxonomies'  => array( 'post_tag' ),
		'menu_icon'   => 'dashicons-cart',
	);




	/*|REGISTRAR|*/
	
	#SLIDER HOME
	register_post_type( 'slider-home' , $args  );

	#PRODUCTOS
	register_post_type( 'theme-producto' , $args_producto );



	flush_rewrite_rules();
}

add_action( 'init', 'create_post_type' );


?>
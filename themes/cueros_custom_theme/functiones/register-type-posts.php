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

	/*|-----IMÁGENES ----------------------|*/
	
	$labels_gallery = array(
		'name'               => __('Gal. Imágenes'),
		'singular_name'      => __('Gal. Imágen'),
		'add_new'            => __('Nuevo Gal. Imágen'),
		'add_new_item'       => __('Agregar nuevo Gal. Imágen'),
		'edit_item'          => __('Editar Gal. Imágen'),
		'view_item'          => __('Ver Gal. Imágen'),
		'search_items'       => __('Buscar Gal. Imágens'),
		'not_found'          => __('Gal. Imágen no encontrado'),
		'not_found_in_trash' => __('Gal. Imágen no encontrado en la papelera'),
	);

	$args_gallery = array(
		'labels'      => $labels_gallery,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => false,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes' ),
		'show_ui' => true,
		'taxonomies'  => array( 'post_tag' ),
		'menu_icon'   => 'dashicons-format-gallery',
	);

	/*|-----VIDEOS ----------------------|*/
	
	$labels_videos = array(
		'name'               => __('Gal. Videos'),
		'singular_name'      => __('Gal. Video'),
		'add_new'            => __('Nuevo Video'),
		'add_new_item'       => __('Agregar nuevo Video'),
		'edit_item'          => __('Editar Video'),
		'view_item'          => __('Ver Video'),
		'search_items'       => __('Buscar Videos'),
		'not_found'          => __('Video no encontrado'),
		'not_found_in_trash' => __('Video no encontrado en la papelera'),
	);

	$args_videos = array(
		'labels'      => $labels_videos,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => false,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes' ),
		'show_ui' => true,
		'taxonomies'  => array( 'post_tag' ),
		'menu_icon'   => 'dashicons-video-alt2',
	);


	/*|REGISTRAR|*/
	
	#SLIDER HOME
	register_post_type( 'slider-home' , $args  );

	#PRODUCTOS
	register_post_type( 'theme-producto' , $args_producto );

	#GALERIA IMAGENES
	register_post_type( 'theme-gallery-images' , $args_gallery );

	#GALERIA VIDEOS
	register_post_type( 'theme-gallery-video' , $args_videos);

	flush_rewrite_rules();
}

add_action( 'init', 'create_post_type' );


?>
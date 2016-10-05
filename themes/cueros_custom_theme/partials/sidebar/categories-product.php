<?php /* Sidebar Categorias de Productos */ 

//Objeto actual si es taxonomía
$current_term         = get_queried_object(); 

$cat_product_taxonomy = 'producto_category';

?>

<h2 class="titleCommon__section text-uppercase"> <?php _e( "Categorías" , LANG ); ?></h2>

<?php  
	#Obtener todas las categorias de productos
	$parent_cat_products =  get_terms( array(
		'taxonomy'   => $cat_product_taxonomy,
		'hide_empty' => false,
		'parent'     => 0,
		'order'      => 'ASC',
		'orderby'    => 'meta_value_num',
		'meta_key'   => 'meta_tax_order',
	));

#Hacer recorrido para obtener elementos padre
foreach( $parent_cat_products as $parent_cat_product ) : ?>

	<a href="<?= get_term_link( $parent_cat_product ); ?>" class="text-uppercase d-block linktoParentProduct <?= $current_term->term_id == $parent_cat_product->term_id ? 'active' : '' ?>">
		<?php _e( $parent_cat_product->name , LANG  ); ?>
	</a> <!-- /.end of parent category -->
	
	<!-- Lista de sub categorias -->
	<ul class="menuCategoryProducts">
		
<?php 

	#Hacer recorrido para obtener elementos hijos
	$childs_cat_products =  get_terms( array(
		'taxonomy'   => $cat_product_taxonomy,
		'hide_empty' => false,
		'parent'     => $parent_cat_product->term_id,
		'order'      => 'ASC',
	));

	foreach( $childs_cat_products as $child_cat_products ) :  ?>
		
		<li>
			<a href="<?= get_term_link( $child_cat_products ); ?>" class="link-to-item <?= $current_term->term_id == $child_cat_products->term_id ? 'active' : '' ?>">
			<?php _e( $child_cat_products->name , LANG  ); ?>
			</a> <!-- /.end of parent category -->
		</li>

	<?php endforeach; ?> 

	</ul> <!-- /.sidebarCategoryProducts -->

<?php endforeach; ?>


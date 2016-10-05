<?php
/**
 * Theme CUEROS WEB funciones y definiciones
 *
 * Configurar el tema y proporciona algunas funciones auxiliares , que se utilizan en el
 * Tema como etiquetas de plantillas personalizadas . Otros están unidos a la acción y el filtro
 * Ganchos en WordPress para cambiar la funcionalidad básica .
 *
 * Cuando se utiliza un tema niño puede anular ciertas funciones (aquellos envueltos
 * En un function_exists ( ) llamada) definiéndolos por primera vez en su tema del niño
 * Archivo functions.php . archivo functions.php del tema de los niños está incluido antes
 * Archivo del tema de los padres , por lo que se utilizarían las funciones de temas niño.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 */

/**
 * Opciones del tema
 */

$options = get_option("theme_settings");


/**
 * Definiendo Constantes
 */
require('functiones/constants.php');


/******************************************************************/
/* 	Archivos de Condiguración en el Administrador */
/*******************************************************************/

/*-----------------
* Agregar nuevas columnas 
*------------------*/
require('admin/custom/new-columns.php');


/**
* Setear scripts archvos css y javascript de la administracion del tema
**/
//css
require('admin/assets/custom-styles.php');
//javascript
require('admin/assets/custom-scripts.php');

/*-----------------
* Opciones del tema
*------------------*/
include('admin/theme-customizer-modal.php');


/*-----------------------------------------
/* FUNCIONES PERSONALIZADAS
*-----------------------------------------*/

include('functiones/custom-functions.php');

/***********************************************************************************************/
/* 	Archivos de Condiguración en el Tema  */
/***********************************************************************************************/

/***********************************************************************************************/
/* Cargar archivos JS */
/***********************************************************************************************/

require_once('functiones/scripts.php');


/******************************************************************************************/
/* Marcar la navegacion del padre activo cuanto se encuentra en un single post type */
/******************************************************************************************/

require_once('functiones/nav-active-parent.php');

/***********************************************************************************************/
/* Registrar Menus */
/***********************************************************************************************/
require_once('functiones/register-menu.php');

/***********************************************************************************************/
/* Agregando nuevos SIDEBARS y secciones para widgets */
/***********************************************************************************************/	
require_once('functiones/add-sidebars.php');

/***********************************************************************************************/
/* Registrar widgets  */
/***********************************************************************************************/
#WIDGET DE IMAGEN TEXTO Y LINK
#require_once("functiones/widgets/widget-ad-image.php");

/***********************************************************************************************/
/* Agregando nuevos tipos de post  */
/***********************************************************************************************/
require_once('functiones/register-type-posts.php');

/***********************************************************************************************/
/* Agregar formatos al tema  */
/***********************************************************************************************/
require_once('functiones/support-formats.php');


/***********************************************************************************************/
/* Opciones o filtros antes de salvar los posts o tipos de posts */
/***********************************************************************************************/
//require_once("functiones/options-before-save-posts.php");

/***********************************************************************************************/
/* Registrar nuevos metabox  */
/***********************************************************************************************/
require_once('functiones/register-metabox.php');

/***********************************************************************************************/
/* Registrar nuevas taxonomías  */
/***********************************************************************************************/
require_once('functiones/register-new-taxonomy.php');

/*
**********************************************************************************************/
/* Campos personalizados para las  taxonomías  */
/***********************************************************************************************/
require_once('functiones/taxonomy/custom-fields-taxonomy.php');




/***********************************************************************************************/
/* Registrar NUEVAS QUERY VARS campos personalizados para pasar argumentos en la URL  */
/***********************************************************************************************/

/*
Con el fin de ser capaz de sumar y trabajar con su propia consulta personalizada VARs que anexa a las URL (por ejemplo: "http://mysite.com/some_page/?my_var=foo" - por ejemplo usando add_query_arg ()) que debe añadirlos a las variables de consulta públicos disponibles para WP_Query.
*/
function add_query_vars_filter( $vars ){
  $vars[] = "line-name";
  return $vars;
}
add_filter( 'query_vars', 'add_query_vars_filter' );


?>
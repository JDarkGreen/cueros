var j = jQuery.noConflict();

(function($){
/*|----------------------------------------------------------------------|*/

	j(document).on('ready',function(){

		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL HOME  LIBRERIA REVSLIDER -----|*/
		/*|----------------------------------------------------------------------|*/
		
		// CHECK IF fn.css already extended
		if ( j.fn.cssOriginal != undefined ) { j.fn.css =  j.fn.cssOriginal } 
			
    	// Setear revolution slider
		var api_rev = j("#carousel-home").revolution({
			delay           : 600, 
			fullWidth       : "on",
			navigationArrows: "none",
			navigationType  : 'none', // use none, bullet or thumb
			onHoverStop     : "off",
			startheight     : 420,
		}); 

		// Eventos para flechas
		j("#pageInicio__slider__arrows a").on( "click" , function(e){
			e.preventDefault(); // prevent default evento
			//obtener movimiento
			var movement = j(this).attr("data-move");
			//segun movimiento
			switch( movement ){
				case 'prev': api_rev.revprev(); break;
				case 'next': api_rev.revnext(); break;
				default    : api_rev.revprev(); break;
			}
		});


	/*|- end of document -|*/
	});

/*|----------------------------------------------------------------------|*/
})(jQuery);
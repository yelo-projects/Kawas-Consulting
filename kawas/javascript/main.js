jQuery(document).ready(function($){
	
	$(document).mailHider();
	var $wrappers = $('div.pages-wrapper')
		, wrapperHeight = $wrappers.first().outerHeight()
		, slideCallBack = function(pageNum){
			console.log(pageNum);
		};
	$('#Pages div.pages-slider').each(function(){
		var _s = new Slider($(this),{callback:slideCallBack});
	})


	

	$('#Pages div.page').on('click','a.page-link',function(e){
		e.preventDefault();
		$window.scrollTo($(this).attr('href'),700,{
			offset:-60
			, easing: 'easeOutExpo'
		});
	})

    var scrollorama = $.scrollorama({blocks:$wrappers})
	.animate('#Pages .pos-3 div.pages-slider',{
    	  duration:wrapperHeight
		, property:''
		, end:0
		, pin:true
		, func:function($el,animPercent,anim){
			var _slider = $el.data('slider');
			if(_slider && _slider.hasPages){
				_slider.gotoPercent(animPercent);
			}
		}
	});	

})

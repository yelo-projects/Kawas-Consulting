jQuery(document).ready(function($){

	$(document).mailHider();
	var   $wrappers = $('div.pages-wrapper')
		, wrapperHeight = $wrappers.first().outerHeight()
		, wrapperWidth = $(window).on('resize',function(){wrapperWidth = $(window).outerWidth();}).outerWidth()
		, slidersCallback = function(_slider,$el,animPercent,anim,block){
			
			if(_slider && _slider.hasPages){
				_slider.gotoPercent(animPercent);
			}
		}
		, $sliders = $('#Pages div.pages-slider:has(.pos-2)');



	$('#Pages div.page').on('click','a.page-link',function(e){
		e.preventDefault();
		$(window).scrollTo($(this).attr('href'),700,{
			offset:-60
			, easing: 'easeOutExpo'
		});
	})

	var scrollorama = $.scrollorama({blocks:$wrappers})
		, sliderCoeff = .5
		, slidersDuration = (wrapperHeight * sliderCoeff)
		, backgroundDuration = wrapperHeight / 4
		, backgroundDelay = backgroundDuration * 3;
	$wrappers.each(function(){
		var $wrapper = $(this)
		,	$bg1 = $wrapper.find('div.bg-1').first()
		,	$bg2 = $wrapper.find('div.bg-2').first()
		;
		scrollorama.animate($bg1,{
			  duration:backgroundDuration
			, delay: backgroundDelay
			, property:'background-position-y'
			, start:0
			, end:- wrapperHeight
			, pin:true
		})
		scrollorama.animate($bg2,{
			  duration:wrapperHeight
			, property:'background-position-x'
			, end:0
			, start:wrapperWidth
			, pin:true
		})
	})
	$sliders.each(function(){
		var $slider = $(this)
			, _s = new Slider($slider);
	 	scrollorama.animate($slider,{
			  duration:wrapperHeight
			, property:''
			, end:0
			, func:function($el,animPercent,anim,block){
				slidersCallback(_s,$el,animPercent,anim,block);
			}
		});
	})

})

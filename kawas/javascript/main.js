//email
(function($){
	$.fn.mailHider = function(replaceText){
		return $("a[href^=mailto]",this).each(function(){
			var token = this.rel;
			this.onmouseover = this.oncontextmenu = function(){
				this.href = this.href.split("?")[0].replace(token, "");
				this.onmouseover = this.oncontextmenu = null;
			}
			if(replaceText!==0){this.innerHTML = this.innerHTML.replace(token, '<b style="display:none">'+token+'</b>');}
		});
	}
})(jQuery);

function Slider($obj){
	this.slider = $obj;
	this.wrapper = $obj.parent();
	this.pages = $obj.children('div.page');
	this.currentpage = 0;
	this.totalPages = this.pages.length;
	this.controls = this.wrapper.children('div.controls').first();
	this.nextBtn = this.controls.find('a.next').first();
	this.previousBtn = this.controls.find('a.previous').first().hide();
	var that=this;
	if(this.totalPages>0){
		//this.slider.css({'position':'absolute'});
		this.wrapper.on('click','a',function(e){
			e.preventDefault();
			console.log($(this));
			if($(this).hasClass('next')){
				that.next();
			}else{
				that.previous();
			}
			return false;
		})
	}else{
		this.nextBtn.hide();
		return false;
	}
	return this;
}

Slider.prototype = {
	shift:900
	, next:function(){
		if(this.currentpage===this.totalPages){
			this.nextBtn.hide();
			return;
		}
		this.currentPage++;
		this.nextBtn.show();
		this.previousBtn.show();
		this.pages.animate({left:'-='+this.shift});
	}

	, previous:function(){
		if(this.currentpage===0){
			this.previousBtn.hide();
			return;
		}
		this.currentPage--;
		this.previousBtn.show();
		this.nextBtn.show();
		this.pages.animate({left:'+='+this.shift});
	}

}

jQuery(document).ready(function($){
	
	$(document).mailHider();

	$('#Pages div.pages-slider').each(function(){
		new Slider($(this));
	})
	
})

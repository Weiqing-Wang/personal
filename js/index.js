
var img=$('.car_pic img');
var i=0;
var times;
var point=$('.show_sircle span');
$(document).ready(function(){
	img.eq(0).fadeIn().siblings().fadeOut();
	pointerDisplay();
	$('.show_sircle span').mouseover(function(){
		clearInterval(times);
		i=$(this).index();
		show();	
	})
	$('.show_sircle span').mouseout(function(){
		pointerDisplay();
		show();
	})
	changeleft();
	changeright();
	
})


function show(){
	img.eq(i).fadeIn().siblings().fadeOut();
	point.eq(i).addClass('active').siblings().removeClass('active');
}


function pointerDisplay(){
	    times=setInterval(function(){
		i++;
		if(i>=img.length){
			i=0;
		}
		show();
	},4000)
}


function changeleft(){
	i=img.length;
	$('.changeleft').click(function(){
		
		i--;
		show();
		if(i<0){
			i=img.length.length-1;
		}
	})
	$('.show_change').mouseover(function(){
		clearInterval(times);
	})
	$('.show_change').mouseout(function(){
		pointerDisplay();
	})
}
function changeright(){
	i=0;
	$('.changeright').click(function(){
		i++
		show();
		if(i>img.length-1){
			i=0;
		}
		show();
	})
}


//头部特效
$(document).ready(function(){
	$(window).scroll(function(){
		var top= $(this).scrollTop();
		if(top>200){
			$('.header').addClass('headeradd')
		}else{
			$('.header').removeClass('headeradd')
		}
		
	})
})




$(document).ready(function(){
	$('.intro1').mouseover(function(){
		$('.intro-pic').addClass('rotatepic-back')
	})
	$('.intro1').mouseout(function(){
		$('.intro-pic').removeClass('rotatepic-back')
	})
})



$(document).ready(function(){
	$(window).scroll(function(){
		var top= $(this).scrollTop();
		if(top>200){
			$('.self').addClass('self1')
		}else if(top<100){
			$('.self').removeClass('self1')
		}
		
	})
})





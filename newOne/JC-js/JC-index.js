//图片轮播效果
var i=0;
var img=$('.picshow img');
var btn=$('.logoBtn');
$(document).ready(function(){
	img.eq(0).fadeIn().siblings().fadeOut();
	setInterval(function(){
		Show();
		i++;
		if(i==4){
			i=0;
		}
	},4000)
	
	clickBtn();
})
function Show(){
	img.eq(i).fadeIn(300).siblings().fadeOut(300);
	btn.eq(i).addClass('active').siblings().removeClass('active');
}
function clickBtn(){
	btn.click(function(){
		i=$(this).index();
		img.eq(i).fadeIn(300).siblings().fadeOut(300);
		$(this).addClass('active').siblings().removeClass('active');
	})
}




$(document).ready(function(){
	$('.con').mouseover(function(){
		$(this).children('div').show();
	});
	$('.con').mouseout(function(){
		$(this).children('div').hide();
	});
})



var z=document.getElementsByClassName("fopic");
z[0].onmouseover=function(){
    var ima=document.getElementById("fch");
    ima.style.backgroundImage="url(imges/01-1.jpg)";
}
z[1].onmouseover=function(){
    var ima=document.getElementById("fch");
    ima.style.backgroundImage="url(imges/02-2.jpg)";
}
z[2].onmouseover=function(){
    var ima=document.getElementById("fch");
    ima.style.backgroundImage="url(imges/03-3.jpg)";
}
z[3].onmouseover=function(){
    var ima=document.getElementById("fch");
    ima.style.backgroundImage="url(imges/04-4.jpg)";
}
z[4].onmouseover=function(){
    var ima=document.getElementById("fch");
    ima.style.backgroundImage="url(imges/05-5.jpg)";}





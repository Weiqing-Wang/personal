var circle=$(".btn_circle span");
var index=0;
var index1;
var arr=['p3','p4','p5','p6','p7','p8','p1','p2'];
var images=$('.star img');
var ting;
var t;
$(document).ready(function(){
	starshow();
	clickcircle();
	clickBtn_left();
	clickBtn_right();
	clickright();
	clickleft();


	
})
//轮播图
function starshow(){
	ting=setInterval(function(){
		arr.unshift(arr[arr.length-1]);
		arr.splice(arr.length-1,1);
		for(var i=0;i<images.length;i++){
			$(images[i]).attr('class',arr[i]);
			if(arr[i]=="p3")
			{
				circle.eq(i).addClass('active').siblings().removeClass('active');	
			}
		}
	},4000)
}
//圆形按钮点击函数
function clickcircle(){
	circle.click(function(){
		clearInterval(ting);
		index1=$('.p3').index();
	    index=$(this).index();
	    circle.eq(index).addClass('active').siblings().removeClass('active');
	    if(index-index1>0){
	    	for(t=0;t<index-index1;t++){
				arr.unshift(arr[arr.length-1]);
				arr.splice(arr.length-1,1);
				for(var i=0;i<images.length;i++){
					$(images[i]).attr('class',arr[i]);

				}
			}
	    }else{
	    	for(t=0;t<index+8-index1;t++){
				arr.unshift(arr[arr.length-1]);
				arr.splice(arr.length-1,1);
				for(var i=0;i<images.length;i++){
					$(images[i]).attr('class',arr[i]);

				}
			}
	    }	
	})
	circle.mouseover(function(){
		clearInterval(ting);
		
	})
	circle.mouseout(function(){
		starshow();
	})
}
//左侧点击
function clickBtn_left(){
	$('.btn').mouseover(function(){
		clearInterval(ting);
		
	})
	$('.btn').mouseout(function(){
		starshow();
	})
	$('.prev').click(function(){
		arr.push(arr[0]);
		arr.splice(0,1);
		for(var i=0;i<images.length;i++){
			$(images[i]).attr('class',arr[i]);
			if(arr[i]=="p3"){
				circle.eq(i).addClass('active').siblings().removeClass('active');	
			}
		}
	})
}
//右侧点击
function clickBtn_right(){
	$('.next').click(function(){
		arr.unshift(arr[arr.length-1]);
		arr.splice(arr.length-1,1);
		for(var i=0;i<images.length;i++){
			$(images[i]).attr('class',arr[i]);
			if(arr[i]=="p3")
			{
				circle.eq(i).addClass('active').siblings().removeClass('active');	
			}
		}
	})
}
//图片点击
function clickright(){
	$('.layer').mouseover(function(){
		clearInterval(ting);
		
	})
	$('.layer').mouseout(function(){
		starshow();
	})
	$('.clickright').click(function(){
		arr.unshift(arr[arr.length-1]);
		arr.splice(arr.length-1,1);
		for(var i=0;i<images.length;i++){
			$(images[i]).attr('class',arr[i]);
			if(arr[i]=="p3")
			{
				circle.eq(i).addClass('active').siblings().removeClass('active');	
			}
		}
	})
}


function clickleft(){
	$('.clickleft').click(function(){
		arr.push(arr[0]);
		arr.splice(0,1);
		for(var i=0;i<images.length;i++){
			$(images[i]).attr('class',arr[i]);
			if(arr[i]=="p3"){
				circle.eq(i).addClass('active').siblings().removeClass('active');	
			}
		}
	})
}




	










		
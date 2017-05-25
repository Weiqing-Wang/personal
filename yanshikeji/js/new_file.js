var arr=['p1','p2','p3','p4'];
var img=$('.slide img');
var i;
var t=0;
var arr1=[];
var time;
var index=$('.slidecircle span').index
$(document).ready(function(){
	showPic();
	$('.slide').mouseover(function(){
		clearInterval(time)
	})
	$('.slide').mouseout(function(){
		showPic();
	})
})

function showPic(){
	time=setInterval(function(){
		arr.unshift(arr[3]);
		arr.pop();
		arr1=arr;
		for(i=0;i<img.length;i++){
			$(img[i]).attr('class',arr1[i])
		}	
		
		t++;
		if(t>1){
			t=0;
		}
		$('.slidecircle span').eq(t).addClass('circleavtive').siblings().removeClass('circleavtive');
	
		
	},4000)
}

function clickBtn(){
	$('.slidecircle span').mouseover(function(){
		clearInterval(time);
	})
	$('.slidecircle span').click(function(){
		
		arr.unshift(arr[3]);
		arr.pop();
		arr1=arr;
		for(i=0;i<img.length;i++){
			$(img[i]).attr('class',arr1[i])
		}	
		t++;
		if(t>1){
			t=0;
		}
		$('.slidecircle span').eq(t).addClass('circleavtive').siblings().removeClass('circleavtive');
	})
	$('.slidecircle span').mouseout(function(){
		show();
	})
}
clickBtn();
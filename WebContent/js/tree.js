/**
 * 
 */

$(function(){
	$(".ina").click(function(){
		if($(this).siblings('ul').css('display')=='none'){
			$(this).siblings('ul').slideDown(300);
			$(this).parents('li').siblings('li').children('ul').slideUp(300);
		}else{
			$(this).siblings('ul').slideUp(300);
		}
	});
	/*$("section").load('index.jsp');*/
});
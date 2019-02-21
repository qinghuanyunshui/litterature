$(function(){

     $(".btn-add").click(function(){
   	  $(".alertDiv-add").slideDown(1000,function(){
   		  $(".alertDiv").show();
   	  });
     });
    
	//当单击查询按钮时  查询表单提交
	$("#btn-find").click(function(){
		$(".findbox").submit();
	});
	//添加框 关闭事件
	 $(".hid").click(function(){
	 	   $(".alertCheck-add").slideUp(500,function(){
	 		   $("..alertCheck-add").submit();
	 		   $(".alertCheck").hide();
	 	   });
	    });

});
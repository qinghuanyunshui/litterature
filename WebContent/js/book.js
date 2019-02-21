

$(function(){
	var choose="";
	$(".btn-edit").click(function(){
		 //获取当前网址
		 var curWwwPath=window.document.location.href; 
		 //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
		    var pathName=window.document.location.pathname;  
		    var pos=curWwwPath.indexOf(pathName);  
		    //获取主机地址，如： http://localhost:8083  
		    var localhostPaht=curWwwPath.substring(0,pos);
		    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
		    
		    choose="edit";
		$.ajax({
			url:"yupdateBook.action",
			type:"post",
			async:true,
			dataType:'json',
			data:{'id':$(this).attr('id')},
			success:function(data){
				//var str =JSON.stringify(data);
				//var book=eval("("+str+")");
				$(".alertDiv-add").slideDown(1000,function(){
			   		  $(".alertDiv").show();
			   	  });
		    	$(".alertDiv #title").val(data.title);
		    	$(".alertDiv #author").val(data.author);
		    	$(".alertDiv #creatTime").val(data.creatTime);
		    	$(".alertDiv #type").val(data.type);
		    	$(".alertDiv #demo").val(data.demo);
		        $(".alertDiv input[type=submit]").val("修     改");
			}
			
		});
	});
	$("section .alertDiv form").submit(function(){
    	
		if(choose == 'edit'){
			$("section .alertDiv form").attr('action','updateBook.action?id='+$(".btn-edit").attr('id')); 
		}
    });
	
	//添加框 关闭事件
	 $(".hid").click(function(){
  	   $(".alertDiv-add").slideUp(500,function(){
  		   $(".alertDiv").hide();
  		 $(".alertDiv #title").val('');
	    	$(".alertDiv #author").val('');
	    	$(".alertDiv #creatTime").val('');
  	   });
     });
	
});
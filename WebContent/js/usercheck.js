/**
 * 
 */
  $(function(){
	   var choose="";//增加或修改
	   var isOK=true;
	    $(".btn-edit").click(function(){
	    	choose='edit';
		   $.ajax({
 			    url:"UserServlet?flag=yupdate",
 			    type:"post",
 			    async:true,
 			    dataType:'json',
 			    data:{"id":$(this).attr('id')},
 			    success:function(data){
 			    	var str =JSON.stringify(data);
 			    	var user=eval("("+str+")");
 			    	$(".alertDiv-add").slideDown(1000,function(){
 			    		  $(".alertDiv").show();
 			    	  });
 			    	$(".alertDiv #username").val(user.username);
 			    	$(".alertDiv #password").val(user.password);
 			    	$(".alertDiv select").val(user.type);
 			        $(".alertDiv input[type=submit]").val("修     改");
 			    } 
 		   });
	   });
	    $("section .alertDiv form #username").blur(function(){
			$.ajax({
				url:"UserServlet?flag=check",
			    type:"post",
			    async:true,
			    data:{"username":$(this).val(),"choose":choose},
			    success:function(data){
			    	$("section .alertDiv form #username").next("span").remove();
			    	if(data=="no"){
			    		isOK=false;
			    		$("section .alertDiv form #username").after("<span>此用户名已被使用</span>");
			    	}else{
			    		isOK=true;
			    		$("section .alertDiv form #username").after("<span>√</span>");
			    	}
			    }
			});
		});
	    $("section .alertDiv form").submit(function(){
	    	if($("section .alertDiv select").val()==""){
				 $("section .alertDiv select").next("span").remove();
	            $("section .alertDiv select").after("<span>请选择权限</span>");
				isOK= false;
			}else{
				isOK=true;
			}
			if(choose == 'edit'){
				$("section .alertDiv form").attr('action','UserServlet?flag=update'); 
			}
	    });
	    
	    
	  //删除多个选取的复选框
		$(".btn-delete").click(function(){
			var checks = $("input[name=check]");
			var str="";
			 $.each(checks,function(index,value){
				 if(value.checked && index!=0){
					str+=$(this).attr('id').substr(1)+',';
				 }
			});
			
			$(".findbox").attr('action','UserServlet?flag=deledeSome&ids='+str); 
			$(".findbox").submit();
		});
   });
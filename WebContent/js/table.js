/**
 * 
 */
$(function(){
	
	//设置初始表格样式  表头及单双行
	var trs=$("section table tr");
	var i=0;
	$.each(trs,function(){
		if(i==0){
			$(this).addClass("tabletitle");
		}else{
			if(i%2==0){
				$(this).addClass("tablesingle");
			}else{
				$(this).removeClass("tablesingle");
			}
		}
		i++;
	});
	
	//设置鼠标移入 
	$("section table tr").hover(function(){
		$(this).css("background-color","#DCDCDC");
		if($(this).index()==0){
			$(this).css("background","#EAEAEA");
		}
	},function(){
		if($(this).index()%2==0){
			if($(this).index()==0){
				$(this).css("background","#EAEAEA");
			}else{
				$(this).css("background-color","#F7F7F7");
			}
		}else{
			$(this).css("background-color","");
		}
	});
	
/*	//导出Excel
	$(".btn-export").click(function(){
		   var json = [
			    {name:'路人甲',phone:'123456789',email:'000@123456.com'},
		        {name:'炮灰乙',phone:'123456789',email:'000@123456.com'},
		        {name:'土匪丙',phone:'123456789',email:'000@123456.com'},
		        {name:'流氓丁',phone:'123456789',email:'000@123456.com'},
		      ]
		      var str = "姓名,电话,邮箱\n";
		   
		   $.each(json, function(name,value) {
			 with(value){
			    	str+=name+","+phone+","+email+","
			    	//alert(name+","+phone+","+email+",");
			    }
			    str+="\n";
			});
		  
		  // alert(str);
	  var  uri = 'data:text/csv;charset=utf-8,\ufeff' + encodeURIComponent(str);
		      //通过创建a标签实现
		      var link = document.createElement("a");
		      link.href = uri;
		      //对下载的文件命名
		      link.download =  "json数据表.csv";
		      document.body.appendChild(link);
		      link.click();
		      document.body.removeChild(link);
	});*/
      //添加框 关闭事件
       $(".hid").click(function(){
    	   $(".alertDiv-add").slideUp(500,function(){
    		   $(".alertDiv").hide();
    	   });
       });
       
     
      //全选
        $("table #checkAll").click(function(){
        	if(this.checked) {
                $("input[name='check']").attr('checked',true);
            }else {
                $("input[name='check']").attr('checked',false);
            }
        	
        });
       
      
       
       
});
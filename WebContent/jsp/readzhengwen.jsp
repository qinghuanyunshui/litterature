<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
String path = request.getContextPath();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
<!-- <script type="text/javascript" src="/js/read.js" charset="utf-8"></script>  -->
<title>Insert title here</title>

<script type="text/javascript">
/* $(window).load(function () {
	alert('sssssssss');
	var text = ${books.get(0).getBookContents().get(0).getContent() }; //先取出未转换格式前端数据
	var des = text.replace(/\r\n/g, '<br/>').replace(/\n/g, '<br/>').replace(/\s/g, ' '); 
	$("div.text").empty(); 
	$("div.text").append(des); 
}) */
</script>

</head>
<body>

<!--头部开始-->
<jsp:include page="head.jsp"></jsp:include>
<div class="article_ad" style="margin:10px auto; text-align:center;">
                  <script src='/plus/ad_js.php?aid=31' language='javascript'></script>
		   </div>

<div class="w1200 center gw_breadcrumb fs14 fc9"><div class="fr gw_slr" id="login_status"><a href="http://www.xinyawx.com/member/" target="_blank">登录</a><a href="http://www.keer6.com/member/index_do.php?fmdo=user&dopost=regnew" target="_blank">新用户注册</a><a href="http://www.keer6.com/member/article_add.php" target="_blank" ><img src="http://www.keer6.com/templets/keke/images/gw_20.gif" width="130" height="30" /></a></div>您所在的位置：<a href='http://www.keer6.com/'>古典文学</a> > <a href='http://www.keer6.com/dianji/'>古代典籍</a></div>


<div class="xszwy">
<div class="xsnr">
<h1>史记</h1>
<div class="article_ad" style="margin:5px auto; text-align:center;"></div>
<div class="xstext" >
${content}
</div>
</div>

</div>

<!--底部开始-->
 <jsp:include page="foot.jsp"></jsp:include>

</body>
</html>
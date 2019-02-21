<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/css/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="head">
<div class="header">
<div class="headtop">
<div class="logo"><a href="/"><img src="<%=path %>/images/logo.gif"></a></div>
<div class="sousuo">
	 <form name="formsearch" action="/plus/search.php" target="_blank"> 
	 <div class="sousuokuang">
	 <div class="ssgjz">关键字<div class="gjztb"></div></div>
	 <input type="hidden" value="0" name="kwtype"/>
	 <input type="text" value="" id="search-keyword" name="keyword" class="srgjz"/><button type="submit" class="djsstb"></button>
         </div>
	 </form>
</div>
</div>
<div class="nav">
<a href="/">首页</a><a href="/guoxue/">中医著作</a><a href="/gushici/">古诗词</a><a href="/gwjs/">文言文</a><a href="<%=path %>/jsp/dianji.jsp">古代典籍</a><a href="/xiaoshuo/">古典小说</a><a href="/gdwxyj/">中华道藏</a><a href="/gengduo/">佛经收藏</a>

</div>
</div>
<div class="navbg"></div>
</div>

</body>
</html>
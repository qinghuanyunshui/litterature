<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link href="<%=path %>/css/icon.css"  type="text/css" rel="styleSheet">
	<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/tree.js"></script>
</head>

<body>
 <header>
      <img src="${pageContext.request.contextPath}/images/logo.png"/>
        <span>后台管理系统</span>
        <span style="font-size:12px;margin-top:1px;">Background Management</span>
        <div class="user-txt">${loginUser.type }：${loginUser.username}</div>
          <div class="user-icon"><img alt="" src="${pageContext.request.contextPath}/images/logo.png"></div>
 </header>
   <nav>
      <ul>
         <li><a class="ina">
            <i class="icon-need"></i>
           <span>用户管理</span></a>
            <ul>
            <li><a href="NeedServlet?flag=findAll&isCheck=add">普通用户管理</a></li>
            <li><a href="NeedServlet?flag=findAll&isCheck=false">网站人员管理</a></li>
            </ul>
         </li>
         <li><a class="ina">
         <i class="icon-purchase"></i>
         <span>中医著作</span></a>
         <ul>
            <li><a href="<%=path %>/jsp/read/read.action"></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
         </ul>
         </li>
         <li><a class="ina">
         <i class="icon-supplier"></i>
         <span>古诗词</span></a>
          <ul>
            <li><a href="SupplierServlet?flag=findAll&isCheck=false">供应商选择</a></li>
            <li><a href="SupplierServlet?flag=findAll&isCheck=true">供应商考核</a></li>
         </ul>
         </li>
         <li><a class="ina"><i class="icon-stock"></i>
         <span>文言文</span></a>
         <ul>
            <li><a href="#">入库管理</a></li>
            <li><a href="#">保管账管理</a></li>
            <li><a href="#">物资出库管理</a></li>
            <li><a href="#">盘点耗损管理</a></li>
         </ul>
         </li>
          <li><a class="ina"><i class="icon-data"></i>
         <span>古代典籍</span></a>
         <ul>
            <li><a href="GoodsServlet?flag=findAll">物资信息管理</a></li>
            <li><a href="#">物资地区价格</a></li>
            <li><a href="#">合同条款维护</a></li>
            <li><a href="UserServlet?flag=findAll">用户管理</a></li>
            <li><a href="<%=path %>/jsp/up/findBookByType.action?type=古代典籍&demo=历史典籍">历史典籍</a></li>
         </ul>
         </li>
          <li><a class="ina"><i class="icon-search"></i>
         <span>古典小说</span></a>
         <ul>
            <li><a href="#">需求查询</a></li>
            <li><a href="#">采购查询</a></li>
            <li><a href="#">库存查询</a></li>
         </ul>
         </li>
          <li><a class="ina"><i class="icon-search"></i>
         <span>中华道藏</span></a>
         <ul>
            <li><a href="#">需求查询</a></li>
            <li><a href="#">采购查询</a></li>
            <li><a href="#">库存查询</a></li>
         </ul>
         </li>
          <li><a class="ina"><i class="icon-search"></i>
         <span>佛经收藏</span></a>
         <ul>
            <li><a href="#">需求查询</a></li>
            <li><a href="#">采购查询</a></li>
            <li><a href="#">库存查询</a></li>
         </ul>
         </li>
      </ul>
</nav>
</body>
</html>
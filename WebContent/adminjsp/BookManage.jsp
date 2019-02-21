<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.ui.Model" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%
   String path = request.getContextPath();
   %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/main.css"  type="text/css" rel="styleSheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/formcheck.js" charset="gb2312"></script> 
<script type="text/javascript" src="<%=path %>/js/book.js" charset="utf-8"></script> 
<script type="text/javascript">
 
</script>
</head>
<body>
 
<jsp:include page="head.jsp"></jsp:include>
<section>

<div class="dirbox">
    <span>基础数据管理&nbsp;&nbsp;>&nbsp;&nbsp;用户管理</span>
</div>
<div class="tablebox">
<form action="UserServlet?flag=findByName" method="post" class="findbox">
       <div class="btn-add">+&nbsp;新增</div>
       <input type="text" placeholder="请输入要查询的用户名..." name="username"/>
       <div id="btn-find"></div>
 </form>
    <table>
   <tr>
      <td width="50"><input type="checkbox" name="check" id="checkAll"/></td>
      <td width="100" >编号</td>
      <td width="200">书名</td>
      <td width="200">作者</td>
      <td width="200">成书时间</td>
      <td width="200">图书分类</td>
      <td width="200">图书二级分类</td>
      <td width="300">操作</td>
   </tr>
   <c:forEach items="${books }" var="bl" begin="0" end="9">
         <tr>
      <td><input type="checkbox" name="check" id="c${bl.id }"/></td>
      <td>${bl.id }</td>
      <td>${bl.title }</td>
      <td>${bl.author }</td>
      <td>${bl.creatTime}</td>
      <td>${bl.type }</td>
      <td>${bl.demo }</td>
      
      <td><div class="btn-delete"><a href="<%=path%>/jsp/up/deleteBook.action?bid=${bl.id}&type=${bl.type}&demo=${bl.demo}&title=${bl.title}">
      <img src="${pageContext.request.contextPath}/images/btn-delete.png"/>删除</a></div>
          <div class="btn-edit" id="${bl.id }"><a class="edit-data" >
          <img src="${pageContext.request.contextPath}/images/btn-edit.png"/>编辑</a></div>
          <div class="btn-upload" id="${bl.id }"><a href="<%=path %>/jsp/up/showContent.action?type=${bl.type }&demo=${bl.demo }&title=${bl.title }&id=${bl.id }">
          <img src="${pageContext.request.contextPath}/images/btn-edit.png"/>管理</a>
          </div></td>
   </tr> 
   </c:forEach>
   
   
   </table> 
   </div>
   <div class="left">共${booksNum}条记录</div>
   <div class="right">
         <c:if test="${currentPage == 1}">
         <div class="no-page" style="float:right;background-color:gray;">
              <span class="disabled"><< 前一页</span>   
          </div>     
          </c:if>
          <c:if test="${currentPage != 1}">
          <div class="btn-page" style="float:right;background-color:green;">
             <a href="<%=path %>/jsp/up/findBookByType.action?page=${currentPage-1}&type=${books.get(0).type }&demo=${books.get(0).demo }"><< 前一页</a>
         </div>
         </c:if>
         <c:if test="${currentPage == 1}">
         <span class="current">1</span>
         </c:if>
         <c:if test="${currentPage != 1}">
         <div class="no-page" style="float:right;background-color:gray;">
         <a href="<%=path %>/jsp/up/findBookByType.action?page=1&type=${books.get(0).type }&demo=${books.get(0).demo }">1</a>
         </div>
         </c:if>
			 <%
			int pageSum = (Integer)request.getAttribute("pageSum");
			for(int i=1;i<pageSum;i++)
	           {
				
			%>
           
         <c:if test="${currentPage == i+1}">
         <div class="no-page" style="float:right;background-color:gray;">
             <span class="current"><%=i+1%></span>     
         </div>  
         </c:if>
         <c:if test="${currentPage != i+1}">
         <div class="btn-page" style="float:right;background-color:green;">
              <a href="<%=path %>/jsp/up/findBookByType.action?page=<%=i+1%>&type=${books.get(0).type }&demo=${books.get(0).demo }"><%=i+1%></a>
         </div>
         </c:if>
               <%}%> 
         
         <c:if test="${currentPage == pageSum}">
         <div class="no-page">
             <span class="disabled">后一页 >></span>   
         </div>     
         </c:if>
         <c:if test="${currentPage != pageSum}">
         <div class="btn-page" style="float:right;background-color:green;">
         <a href="<%=path %>/jsp/up/findBookByType.action?page=${currentPage+1}&type=${books.get(0).type }&demo=${books.get(0).demo }">后一页 >></a>
         </div>
         </c:if>
         </div>
  
   
   <!-- 弹出层  -->
   
   <div class="alertDiv">
         <form action="<%=path %>/jsp/up/addBook.action" method="post" id="addform" class="alertDiv-add">
           <div class="hid">×</div>
           <input id="title" type="text" placeholder="图书名称" name="title" required="required" /><br /> 
		   <input type="text" id="author" placeholder="作者"  name="author" required="required" /><br /> 
		   <input type="text" id="creatTime" placeholder="成书时间"  name="creatTime" required="required" /><br /> 
		   <input type="text" id="type" name="type"  value=${type } required="required" /><br /> 
		   <input type="text" id="demo" name="demo" value=${demo } required="required" /><br /> 
			<input type="submit" value="增    加" class="btn" />
			<input type="reset" value="取     消" class="btn" />
            
         </form>
       </div>

</section>
</body>
</html>
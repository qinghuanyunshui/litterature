<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/table.js" charset="gb2312"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/formcheck.js" charset="gb2312"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/usercheck.js" charset="gb2312"></script> 
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
      <td width="200" >书名</td>
      <td width="100" >目录号</td>
      <td width="200">章节名称</td>
      <td width="300">操作</td>
   </tr>
   <c:forEach items="${contents }" var="cl" begin="0" end="9">
         <tr>
      <td><input type="checkbox" name="check" id="${cl.id1 }"/></td>
      <td>${title}</td>
      <td>${cl.id1 }</td>
      <td>${cl.chepter }</td>
    
      
      <td><div class="btn-delete"><a href="<%=path %>/jsp/up/deleteContent.action?id1=${cl.id1}&bid=${bid}&type=${type}&demo=${demo}&title=${title}">
      <img src="${pageContext.request.contextPath}/images/btn-delete.png"/>删除</a></div>
          <div class="btn-edit" id="${cl.id1 }"><a class="edit-data" >
          <img src="${pageContext.request.contextPath}/images/btn-edit.png"/>编辑</a></div></td>
   </tr> 
   </c:forEach>
   
   
   </table> 
   </div>
   <div class="inpage">分页预留位置</div>
   <footer>CopyRight &copy; 2018 创睿信教育集团 <br> <br>
   Powered by Teacher Lei版权所有
   </footer>
   
   <!-- 弹出层  -->
   
   <div class="alertDiv">
         <form action="<%=path %>/jsp/up/addBookContent.action?type=${type }&demo=${demo }&title=${title }&bid=${bid}" method="post" enctype="multipart/form-data" id="addform" class="alertDiv-add">
           <div class="hid">×</div>
           <input type="text" placeholder="目录号" name="id1" required="required" /><br /> 
		   <input type="text" placeholder="章节标题"  name="chepter" required="required" /><br /> 
		   <input type="file" name="file" required="required" /><br /> 
		
			<input type="submit" value="增    加" class="btn" />
			<input type="reset" value="取     消" class="btn" />
            
         </form>
       </div>

</section>
</body>
</html>
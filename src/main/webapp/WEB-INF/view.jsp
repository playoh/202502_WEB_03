<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.board.Post" %>
<%
  Post post = (Post) request.getAttribute("post");
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시글 보기</title>
</head>
<body>
<h1>게시글 보기</h1>

<% if (post != null) { %>
<p>ID: <%=post.getId()%></p>
<p>제목: <%=post.getTitle()%></p>
<p>작성자: <%=post.getWriter()%></p>
<p>이메일: <%=post.getEmail()%></p>
<p>내용:<br/><pre><%=post.getContent()%></pre></p>
<% } else { %>
<p>해당 게시글을 찾을 수 없습니다.</p>
<% } %>

<a href="<%=request.getContextPath()%>/post?action=list">목록</a>
<a href="<%=request.getContextPath()%>/post?action=editForm&id=<%= post != null ? post.getId() : 0 %>">수정</a>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.board.Post" %>
<%
  Post post = (Post) request.getAttribute("post");
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시글 수정</title>
</head>
<body>
<h1>게시글 수정</h1>

<% if (post != null) { %>
<form action="<%=request.getContextPath()%>/post" method="post">
  <input type="hidden" name="action" value="edit" />
  <input type="hidden" name="id" value="<%=post.getId()%>" />

  제목: <input type="text" name="title" value="<%=post.getTitle()%>" /><br/><br/>
  작성자: <input type="text" name="writer" value="<%=post.getWriter()%>" /><br/><br/>
  이메일: <input type="email" name="email" value="<%=post.getEmail()%>" /><br/><br/>
  비밀번호: <input type="password" name="password" value="<%=post.getPassword()%>" /><br/><br/>
  내용:<br/>
  <textarea name="content" rows="5" cols="40"><%=post.getContent()%></textarea><br/><br/>

  <input type="submit" value="수정 완료" />
  <a href="<%=request.getContextPath()%>/post?action=list">목록</a>
</form>
<% } else { %>
<p>해당 게시글을 찾을 수 없습니다.</p>
<a href="<%=request.getContextPath()%>/post?action=list">목록</a>
<% } %>
</body>
</html>


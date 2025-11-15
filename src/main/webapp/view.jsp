<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.board.Post" %>
<%
  Post post = (Post) request.getAttribute("post");
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시글 보기</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
  <h1 class="mb-4">게시글 보기</h1>

  <% if (post != null) { %>
  <div class="card">
    <div class="card-header">
      <h5 class="card-title"><%=post.getTitle()%></h5>
    </div>
    <div class="card-body">
      <h6 class="card-subtitle mb-2 text-muted">작성자: <%=post.getWriter()%> (<%=post.getEmail()%>)</h6>
      <hr>
      <p class="card-text" style="white-space: pre-wrap;"><%=post.getContent()%></p>
    </div>
    <div class="card-footer text-muted">
      ID: <%=post.getId()%>
    </div>
  </div>
  <% } else { %>
  <div class="alert alert-danger" role="alert">
    해당 게시글을 찾을 수 없습니다.
  </div>
  <% } %>

  <div class="mt-4">
    <a href="<%=request.getContextPath()%>/post?action=list" class="btn btn-secondary">목록</a>
    <a href="<%=request.getContextPath()%>/post?action=editForm&id=<%= post != null ? post.getId() : 0 %>" class="btn btn-warning">수정</a>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
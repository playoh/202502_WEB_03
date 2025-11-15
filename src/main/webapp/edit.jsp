<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.board.Post" %>
<%
  Post post = (Post) request.getAttribute("post");
%>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시글 수정</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
  <h1 class="mb-4">게시글 수정</h1>

  <% if (post != null) { %>
  <form action="<%=request.getContextPath()%>/post" method="post">
    <input type="hidden" name="action" value="edit" />
    <input type="hidden" name="id" value="<%=post.getId()%>" />

    <div class="mb-3">
      <label for="title" class="form-label">제목:</label>
      <input type="text" id="title" name="title" class="form-control" value="<%=post.getTitle()%>" />
    </div>

    <div class="mb-3">
      <label for="writer" class="form-label">작성자:</label>
      <input type="text" id="writer" name="writer" class="form-control" value="<%=post.getWriter()%>" />
    </div>

    <div class="mb-3">
      <label for="email" class="form-label">이메일:</label>
      <input type="email" id="email" name="email" class="form-control" value="<%=post.getEmail()%>" />
    </div>

    <div class="mb-3">
      <label for="password" class="form-label">비밀번호:</label>
      <input type="password" id="password" name="password" class="form-control" value="<%=post.getPassword()%>" />
    </div>

    <div class="mb-3">
      <label for="content" class="form-label">내용:</label>
      <textarea id="content" name="content" class="form-control" rows="5"><%=post.getContent()%></textarea>
    </div>

    <button type="submit" class="btn btn-primary">수정 완료</button>
    <a href="<%=request.getContextPath()%>/post?action=list" class="btn btn-secondary">목록</a>
  </form>
  <% } else { %>
  <div class="alert alert-danger" role="alert">
    해당 게시글을 찾을 수 없습니다.
  </div>
  <a href="<%=request.getContextPath()%>/post?action=list" class="btn btn-secondary">목록</a>
  <% } %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
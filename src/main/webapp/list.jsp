<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List, com.example.board.Post" %>
<%
    List<Post> posts = (List<Post>) request.getAttribute("posts");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">게시판 목록</h1>

    <a href="<%=request.getContextPath()%>/post?action=writeForm" class="btn btn-primary mb-3">[글쓰기]</a>

    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>제목</th>
            <th>작성자</th>
            <th>이메일</th>
            <th>액션</th>
        </tr>
        </thead>
        <tbody>
        <%
            if (posts != null && !posts.isEmpty()) {
                for (Post p : posts) {
        %>
        <tr>
            <td><%=p.getId()%></td>
            <td><%=p.getTitle()%></td>
            <td><%=p.getWriter()%></td>
            <td><%=p.getEmail()%></td>
            <td>
                <a href="<%=request.getContextPath()%>/post?action=view&id=<%=p.getId()%>" class="btn btn-info btn-sm">보기</a>
                <a href="<%=request.getContextPath()%>/post?action=editForm&id=<%=p.getId()%>" class="btn btn-warning btn-sm">수정</a>
                <a href="<%=request.getContextPath()%>/post?action=delete&id=<%=p.getId()%>" class="btn btn-danger btn-sm"
                   onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" class="text-center">게시글이 없습니다.</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
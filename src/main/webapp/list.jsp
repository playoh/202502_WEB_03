<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List, com.example.board.Post" %>
<%
    List<Post> posts = (List<Post>) request.getAttribute("posts");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
</head>
<body>
<h1>게시판 목록</h1>

<a href="<%=request.getContextPath()%>/post?action=writeForm">[글쓰기]</a>
<br/><br/>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>제목</th>
        <th>작성자</th>
        <th>이메일</th>
        <th>액션</th>
    </tr>
    <%
        if (posts != null) {
            for (Post p : posts) {
    %>
    <tr>
        <td><%=p.getId()%></td>
        <td><%=p.getTitle()%></td>
        <td><%=p.getWriter()%></td>
        <td><%=p.getEmail()%></td>
        <td>
            <a href="<%=request.getContextPath()%>/post?action=view&id=<%=p.getId()%>">보기</a> |
            <a href="<%=request.getContextPath()%>/post?action=editForm&id=<%=p.getId()%>">수정</a> |
            <a href="<%=request.getContextPath()%>/post?action=delete&id=<%=p.getId()%>"
               onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>

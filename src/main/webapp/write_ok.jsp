<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.board.Post" %>
<%
    Post post = (Post) request.getAttribute("post");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>글쓰기 완료</title>
</head>
<body>
<h1>글쓰기 완료</h1>

<% if (post != null) { %>
<p>다음과 같이 저장되었습니다.</p>
<ul>
    <li>ID: <%=post.getId()%></li>
    <li>제목: <%=post.getTitle()%></li>
    <li>작성자: <%=post.getWriter()%></li>
    <li>이메일: <%=post.getEmail()%></li>
    <li>내용: <pre><%=post.getContent()%></pre></li>
</ul>
<% } else { %>
<p>저장에 실패했습니다.</p>
<% } %>

<a href="<%=request.getContextPath()%>/post?action=list">목록으로</a>
</body>
</html>

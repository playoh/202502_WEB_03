<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>글쓰기</title>
</head>
<body>
<h1>글쓰기</h1>

<form action="<%=request.getContextPath()%>/post" method="post">
    <input type="hidden" name="action" value="write" />

    제목: <input type="text" name="title" required /><br/><br/>
    작성자: <input type="text" name="writer" required /><br/><br/>
    이메일: <input type="email" name="email" /><br/><br/>
    비밀번호: <input type="password" name="password" /><br/><br/>
    내용:<br/>
    <textarea name="content" rows="5" cols="40"></textarea><br/><br/>

    <input type="submit" value="등록" />
    <a href="<%=request.getContextPath()%>/post?action=list">목록</a>
</form>
</body>
</html>

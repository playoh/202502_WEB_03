<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>글쓰기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">글쓰기</h1>

    <form action="<%=request.getContextPath()%>/post" method="post">
        <input type="hidden" name="action" value="write" />

        <div class="mb-3">
            <label for="title" class="form-label">제목:</label>
            <input type="text" id="title" name="title" class="form-control" required />
        </div>

        <div class="mb-3">
            <label for="writer" class="form-label">작성자:</label>
            <input type="text" id="writer" name="writer" class="form-control" required />
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">이메일:</label>
            <input type="email" id="email" name="email" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">비밀번호:</label>
            <input type="password" id="password" name="password" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="content" class="form-label">내용:</label>
            <textarea id="content" name="content" class="form-control" rows="5"></textarea>
        </div>

        <button type="submit" class="btn btn-primary">등록</button>
        <a href="<%=request.getContextPath()%>/post?action=list" class="btn btn-secondary">목록</a>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
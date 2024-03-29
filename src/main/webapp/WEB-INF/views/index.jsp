<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Index</title>
    <!-- css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.0/reset.css">
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
    <h1>Index</h1>
    <div class="container">
        <!-- member -->
        <a href="/member/login">로그인</a>
        <a href="/member/join">회원가입</a>
        <a href="/member/">회원목록</a>
        <!-- board -->
        <div class="btn-index">
            <button onclick="writeReq()" class="btn-first">게시글 작성</button>
            <button onclick="listReq()">게시글 목록</button>
            <button onclick="pagingReq()">게시글 목록(페이징)</button>
        </div>
    </div>
</body>
    <script>
        const writeReq = () => {
            location.href = "/board/write";
        }

        const listReq = () => {
            location.href = "/board/";
        }

        const pagingReq = () => {
            location.href = "/board/paging";
        }
    </script>
</html>

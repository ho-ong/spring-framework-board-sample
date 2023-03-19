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
    <title>Detail</title>
    <!-- css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.0/reset.css">
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
    <h2>Detail</h2>
    <table class="board-detail">
        <tr>
            <th>id</th>
            <td>${board.id}</td>
        </tr>
        <tr>
            <th>writer</th>
            <td>${board.boardWriter}</td>
        </tr>
        <tr>
            <th>date</th>
            <td>${board.boardCreatedTime}</td>
        </tr>
        <tr>
            <th>hits</th>
            <td>${board.boardHits}</td>
        </tr>
        <tr>
            <th>title</th>
            <td>${board.boardTitle}</td>
        </tr>
        <tr>
            <th>contents</th>
            <td>${board.boardContents}</td>
        </tr>
    </table>
    <div class="btn-board-detail">
        <button onclick="listReq()">목록</button>
        <button onclick="updateReq()">수정</button>
        <button onclick="deleteReq()">삭제</button>
    </div>
</body>
    <script>
        const listReq = () => {
            // location.href = "/board/";
            const page = "${page}"
            location.href = "/board/paging?page=" + page;
        }

        const updateReq = () => {
            const id = "${board.id}";
            location.href = "/board/update?id=" + id;
        }

        const deleteReq = () => {
            const id = "${board.id}";
            location.href = "/board/delete?id=" + id;
        }
    </script>
</html>

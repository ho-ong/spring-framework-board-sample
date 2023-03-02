<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Detail</title>
</head>
<body>
    <table>
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
    <button onclick="listReq()">목록</button>
    <button onclick="updateReq()">수정</button>
    <button onclick="deleteReq()">삭제</button>
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

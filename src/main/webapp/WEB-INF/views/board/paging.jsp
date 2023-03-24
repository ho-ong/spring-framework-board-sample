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
    <title>Paging</title>
    <!-- css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.0/reset.css">
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
    <div>
        <table>
            <tr>
                <th>id</th>
                <th>title</th>
                <th>writer</th>
                <th>date</th>
                <th>hits</th>
            </tr>
            <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${board.id}</td>
                    <td>
                        <a href="/board?id=${board.id}&page=${paging.page}">${board.boardTitle}</a>
                    </td>
                    <td>${board.boardWriter}</td>
                    <td>${board.boardCreatedTime}</td>
                    <td>${board.boardHits}</td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <!-- 게시글 페이징 -->
    <div class="board-paging">
        <c:choose>
            <%-- 현재 페이지가 1페이지면 이전 글자만 표시 --%>
            <c:when test="${paging.page <= 1}">
                <a>이전</a>
            </c:when>
            <%-- 1페이지가 아닌 경우에는 이전을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
            <c:otherwise>
                <a href="/board/paging?page=${paging.page - 1}">이전</a>
            </c:otherwise>
        </c:choose>
        <%-- for(int i = startPage; i <= endPage; i++) --%>
        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
            <c:choose>
                <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 표시 --%>
                <c:when test="${i eq paging.page}">
                    <span>${i}</span>
                </c:when>
                <c:otherwise>
                    <a href="/board/paging?page=${i}">${i}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:choose>
            <c:when test="${paging.page >= paging.maxPage}">
                <a>다음</a>
            </c:when>
            <c:otherwise>
                <a href="/board/paging?page=${paging.page + 1}">다음</a>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>

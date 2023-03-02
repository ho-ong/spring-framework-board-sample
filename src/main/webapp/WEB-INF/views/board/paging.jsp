<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Paging</title>
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
    <div>
        <c:choose>
            <c:when test="${paging.page <= 1}">
                <span>이전</span>
            </c:when>
            <c:otherwise>
                <a href="/board/paging?page=${paging.page - 1}">이전</a>
            </c:otherwise>
        </c:choose>
        <%-- for(int i = startPage; i <= endPage; i++) --%>
        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
            <c:choose>
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
                <span>다음</span>
            </c:when>
            <c:otherwise>
                <a href="/board/paging?page=${paging.page + 1}">다음</a>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>

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
    <title>Main</title>
    <!-- css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.0/reset.css">
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
    <div class="container">
        <h2><span>${sessionScope.loginEmail}</span>님 환영합니다.</h2>
        <button onclick="updateReq()">정보수정</button>
        <button onclick="logoutReq()">로그아웃</button>
    </div>
</body>
    <script>
        const updateReq = () => {
            location.href = "/member/update";
        }

        const logoutReq = () => {
            location.href = "/member/logout";
        }
    </script>
</html>

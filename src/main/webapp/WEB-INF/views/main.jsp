<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Main</title>
</head>
<body>
    <h2>${sessionScope.loginEmail} 님 환영합니다.</h2>
    <button onclick="updateReq()">회원정보 수정</button>
    <button onclick="logoutReq()">로그아웃</button>
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

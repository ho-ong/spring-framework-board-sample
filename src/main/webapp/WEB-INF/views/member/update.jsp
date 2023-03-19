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
    <title>Update</title>
    <!-- css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.0/reset.css">
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
    <form action="/member/update" method="post" name="updateForm">
        id: <input type="text" name="id" value="${member.id}" readonly /><br>
        email: <input type="text" name="memberEmail" value="${member.memberEmail}" readonly /><br>
        password: <input type="text" name="memberPassword" id="memberPassword" /><br>
        name: <input type="text" name="memberName" value="${member.memberName}" readonly /><br>
        age: <input type="text" name="memberAge" value="${member.memberAge}" /><br>
        mobile: <input type="text" name="memberMobile" value="${member.memberMobile}" /><br>
        <input type="button" value="수정" onclick="updateReq()" />
    </form>
</body>
    <script>
        const updateReq = () => {
            const passwordDB = "${member.memberPassword}";
            const password = document.getElementById("memberPassword").value;

            if(passwordDB == password) {
                document.updateForm.submit();
            } else {
                alert("비밀번호가 일치하지 않습니다!");
            }
        }
    </script>
</html>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
</head>
<body>
    <form action="/member/login" method="post">
        email : <input type="text" name="memberEmail" placeholder="email" /><br>
        password : <input type="text" name="memberPassword" placeholder="password" /><br>
        <input type="submit" value="로그인" />
    </form>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Join</title>
</head>
<body>
    <form action="/member/join" method="post">
        이메일 : <input type="text" name="memberEmail" placeholder="이메일" /><br>
        비밀번호 : <input type="text" name="memberPassword" placeholder="비밀번호" /><br>
        이름 : <input type="text" name="memberName" placeholder="이름" /><br>
        나이 : <input type="text" name="memberAge" placeholder="나이" /><br>
        전화번호 : <input type="text" name="memberMobile" placeholder="전화번호" /><br>
        <input type="submit" value="회원가입" />
    </form>
</body>
</html>

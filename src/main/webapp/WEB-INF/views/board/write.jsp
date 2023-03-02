<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Write</title>
</head>
<body>
    <form action="/board/write" method="post">
        writer : <input type="text" name="boardWriter" placeholder="writer" /><br>
        password : <input type="text" name="boardPass" placeholder="password" /><br>
        title : <input type="text" name="boardTitle" placeholder="title" /><br>
        contents : <textarea name="boardContents" cols="30" rows="10" placeholder="contents"></textarea><br>
        <input type="submit" value="작성" />
    </form>
</body>
</html>

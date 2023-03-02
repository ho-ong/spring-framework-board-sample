<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Update</title>
</head>
<body>
    <form action="/board/update" method="post" name="updateForm">
        <input type="hidden" name="id" value="${board.id}" readonly />
        writer : <input type="text" name="boardWriter" value="${board.boardWriter}" readonly /><br>
        password : <input type="text" name="boardPass" id="boardPass" placeholder="password" /><br>
        title : <input type="text" name="boardTitle" value="${board.boardTitle}" /><br>
        contents : <textarea name="boardContents" cols="30" rows="10">${board.boardContents}</textarea><br>
        <input type="button" value="수정" onclick="updateReq()" />
    </form>
</body>
    <script>
        const updateReq = () => {
            const passInput = document.getElementById("boardPass").value;
            const passDB = "${board.boardPass}";

            if(passInput == passDB) {
                document.updateForm.submit();
            } else {
                alert("비밀번호가 일치하지 않습니다!");
            }
        }
    </script>
</html>

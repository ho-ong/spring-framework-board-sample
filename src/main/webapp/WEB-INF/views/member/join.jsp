<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Join</title>
    <!-- jquery cdn -->
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
</head>
<body>
    <form action="/member/join" method="post">
        email : <input type="text" name="memberEmail" placeholder="email" id="memberEmail" onblur="emailCheck()" /><br>
        <p id="check-result"></p>
        password : <input type="text" name="memberPassword" placeholder="password" /><br>
        name : <input type="text" name="memberName" placeholder="name" /><br>
        age : <input type="text" name="memberAge" placeholder="age" /><br>
        mobile : <input type="text" name="memberMobile" placeholder="mobile" /><br>
        <input type="submit" value="회원가입" />
    </form>
</body>
    <script>
        const emailCheck = () => {
            const email = document.getElementById("memberEmail").value;
            const checkResult = document.getElementById("check-result");

            console.log("입력한 이메일", email);

            $.ajax({
                type: "post",
                url: "/member/email-check",
                data: {
                    "memberEmail": email
                },
                success: function(res) {
                    console.log("요청성공", res);
                    if(res == "ok") {
                        console.log("사용가능한 이메일");
                        checkResult.style.color = "green";
                        checkResult.innerHTML = "사용가능한 이메일";
                    } else {
                        console.log("이미 사용중인 이메일");
                        checkResult.style.color = "red";
                        checkResult.innerHTML = "이미 사용중인 이메일";
                    }
                },
                error: function(err) {
                    console.log("에러발생", err);
                }
            });
        }
    </script>
</html>

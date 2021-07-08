<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<jsp:include page="header.jsp"/>
<html>
<body>
<h1>REGISTRATION</h1>
<p>To register, enter your username and password</p>

<form action="/home">
    Username:<br>
    <input type="text" name="name" required>
    <br>
    Password:<br>
    <input type="password" name="password" required>
    <br>
    Password:<br>
    <input type="password" name="password" required>
    <br>
    <input type="submit" value="Register">
</form>

</body>
</html>
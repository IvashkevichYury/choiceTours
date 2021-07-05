<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<jsp:include page="header.jsp"/>
<html>
<body>
<form action="create" method="post">
    <div class="mb-3">
        <label for="exampleInputEmail" class="form-label">Username</label>
        <input type="text" class="form-control" name="name" id="exampleInputEmail" aria-describedby="emailHelp">
        <div id="emailHelp" class="form-text">Write your name!</div>
    </div>

    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck">
        <label class="form-check-label" for="exampleCheck1">I have read and agree to the terms of service .</label>
    </div>
    <button type="submit" class="btn btn-primary">Create user</button>
</form>
</body>
</html>
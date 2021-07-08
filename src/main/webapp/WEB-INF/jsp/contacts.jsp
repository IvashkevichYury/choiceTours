<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<jsp:include page="header.jsp"/>
<html>
<body>
<h1>CONTACTS</h1>
<h3>Here you can ask a question to the administrator</h3>
<div style="overflow:auto; width: 400px; height: 300px; position: center">
<form>
    <c:forEach var="message" items="${messages}">
        <tr>
            <td>
                    <div>
                        ${message.sender}:
                        ${message.text}
                    </div>
            </td>
            <td>

            </td>
        </tr>
    </c:forEach>
</form>
</div>
<div>
    <p hidden> </p>
    <form action="/contacts" method="post">
        <input type="text" name="text">
        <c:if test="${not empty name}">
            <input hidden type="text" name="name" value="${name}">
        </c:if>

        <c:if test="${isGet}">
            <input type="text" name="name">
        </c:if>

        <button type="submit">Send</button>
    </form>
</div>

</body>
</html>
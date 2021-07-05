<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">name</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="user" items="${userList}">
        <tr>
            <th scope="row">${user.id}</th>
            <td>${user.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
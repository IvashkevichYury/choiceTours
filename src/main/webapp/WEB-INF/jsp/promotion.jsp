<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
        }
    </style>
</head>
<jsp:include page="header.jsp"/>

<body>
<h1>PROMOTION</h1>
<table style="width:100%">
    <tr>
        <th>Hotel</th>
        <th>Departure day</th>
        <th>arrivalCity</th>
        <th>Price</th>
    </tr>
    <c:forEach items="${tours}">
    <tr>
        <td>${tours.hotel}</td>
        <td>${tours.departureDay}</td>
        <td>${tours.arrivalCity}</td>
        <td>${tours.price}</td>
    </tr>
    </c:forEach>
</table>

</body>
</html>
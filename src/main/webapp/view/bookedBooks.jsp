<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>МБУК ОДБ</title>
</head>

<body>
<jsp:include page="include/header.jsp"/>


<table border="1" width="100%" cellpadding="5">
    <tr>
        <th>Номер книги</th>
        <th>Номер брони</th>
    </tr>
    <c:forEach items="${orders}" var="order">
        <tr>
            <td>${order.bookId}</td>
            <td>${order.orderId}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

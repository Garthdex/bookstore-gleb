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

<form action="<%=request.getContextPath()%>/searchBook" method="post">
    <input type="text" name="book_name" value="" size="213" placeholder="название книги">
    <button type="submit" style="font-size: 13px">  Поиск  </button>
    <br><br><br><br><br><br>
</form>

<sec:authorize access="hasRole('ROLE_ADMIN')">
    <form action="<%=request.getContextPath()%>/addBook">
        <button type="submit">Добавить книгу</button>
    </form>
</sec:authorize>
<table border="1" width="100%" cellpadding="5">
    <tr>
        <th>Название</th>
        <th>Автор</th>
        <th>Где находится</th>
        <sec:authorize access="hasRole('ROLE_ADMIN')"><th></th></sec:authorize>
    </tr>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><form action="<%=request.getContextPath()%>/booking" method="post">
                <input type="hidden" name="book_id" value="${book.bookId}">
                <button type="submit">${book.bookName}</button>
            </form></td>
            <td>${book.bookAuthor}</td>
            <td>${book.bookStorage}</td>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <td>
                    <form action="<%=request.getContextPath()%>/deleteBook" method="post">
                        <input type="hidden" name="book_id" value="${book.bookId}">
                        <button type="submit">Удалить книгу</button>
                    </form>
                </td>
            </sec:authorize>
        </tr>
    </c:forEach>
</table>
</body>
</html>

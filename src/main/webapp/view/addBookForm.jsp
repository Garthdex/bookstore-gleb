<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>МБУК ОДБ</title>
</head>

<body>
<jsp:include page="include/header.jsp"/>

<form method = "post" action = "<%=request.getContextPath()%>/addBookProcess">
    <p>Название</p>
    <input type="text" name="book_name" value="" size="50"><br>
    <p>Автор</p>
    <input type="text" name="book_author" value="" size="50">
    <p>Где находится</p>
    <input type="text" name="book_storage" value="" size="50">
    <button type="submit" style="font-size: 13px">  Добавить  </button>
</form>
</body>
</html>
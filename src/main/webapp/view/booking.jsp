<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>МБУК ОДБ</title>
</head>

<body>
<jsp:include page="include/header.jsp"/>


<font color=ForestGreen face="Comic Sans MS"><h1 align="center"> Вы уверены, что хотите в ближайшее время забрать эту книгу? Библиотекарь
    отложит её для того, чтобы вы смогли быстро её найти.</h1> <br><br><br>
</font>

<form action="<%=request.getContextPath()%>/booking2"><input type="hidden" name="book_id" value="${bookId}"> <button type="submit" class="buttonyes">Да</button></form>
<a href="<%=request.getContextPath()%>/order" class="buttonno">Нет</a>

</body>
</html>

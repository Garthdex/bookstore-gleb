<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>МБУК ОДБ</title>
</head>

<body>
<jsp:include page="include/header.jsp"/>


<font color=ForestGreen face="Comic Sans MS"><h1 align="center"> Книга отложена для Вас. Номер вашего заказа: </h1><br><br>
</font>

<font color=red face="Comic Sans MS"><h1 align="center"> ${orderId} </h1><br><br>
</font>

<a href="<%=request.getContextPath()%>/main" class="button6">На главную</a>
</body>
</html>

<!DOCTYPE HTML>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>МБУК ОДБ</title>
</head>

<body>
<jsp:include page="view/include/header.jsp"/>

<form method = "post" action = "<%=request.getContextPath()%>/appLogin">
  <p>Логин</p>
  <input type="text" name="app_username" value="" size="50"><br>
  <p>Пароль</p>
  <input type="password" name="app_password" value="" size="50">
  <button type="submit" style="font-size: 13px">  Вход  </button>
</form>
</body>
</html>

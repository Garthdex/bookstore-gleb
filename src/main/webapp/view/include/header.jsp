<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<header>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap/css/bootstrap-theme.css" type="text/css"/>
    <div class="header-bg">
        <img src="<%=request.getContextPath()%>/resources/img/head.png" width="1762" height="220">
    </div>


    <sec:authorize access="!isAuthenticated()" ><a href="<%=request.getContextPath()%>/login.jsp" class="button1">Вход</a></sec:authorize>
    <sec:authorize access="isAuthenticated()" ><a href="<%=request.getContextPath()%>/appLogout" class="button1">Выход</a></sec:authorize>
    <a href="<%=request.getContextPath()%>/main" class="button2">Главная</a>
    <a href="<%=request.getContextPath()%>/info" class="button3">Информация о нас</a>
    <a href="<%=request.getContextPath()%>/order" class="button4">Заказать книгу</a>
    <a href="<%=request.getContextPath()%>/contacts" class="button5">Контакты</a>
    <br><br><br>
</header>

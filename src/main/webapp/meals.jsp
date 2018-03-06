<%@ page import="ru.javawebinar.topjava.util.DateUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--<link rel="stylesheet" href="css/style.css">--%>
    <%--<jsp:useBean id="mealList" type="ru.javawebinar.topjava.util.MealsUtil" scope="request"/>--%>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>
<section>
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Time</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
        <c:forEach items="${mealWithExceeds}" var="meal">
            <%--<jsp:useBean id="DateUtil" scope="request" type="ru.javawebinar.topjava.util.DateUtil"/>--%>
            <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealWithExceed"/>
            <tr bgcolor=“${meal.exceed ? 'red' : 'green'}“>
                <td>${meal.dateTime}</td>
                <%--<td>${DateUtil.format(meal.date)}</td>--%>
                <%--<td><%=DateUtil.format(meal.getDate())%></td>--%>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>

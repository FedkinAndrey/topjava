<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--<link rel="stylesheet" href="css/style.css">--%>
    <jsp:useBean id="mealList" type="ru.javawebinar.topjava.util.MealsUtil" scope="request"/>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>
<%--<table cellpadding="2">--%>
    <%--<c:forEach var="mealEntry" items="${mealList.meals}">--%>
        <%--<jsp:useBean id="mealEntry"--%>
                     <%--type="ru.javawebinar.topjava.model.Meal"/>--%>
        <%--<c:set var="time" value="${mealEntry.dateTime}"/>--%>
        <%--<c:set var="description" value="${mealEntry.description}"/>--%>
        <%--<c:set var="calories" value="${mealEntry.calories}"/>--%>
        <%--<tr>--%>
            <%--<td colspan="2"><h2><a name="type.name">${time.toString()}</a></h2></td>--%>
        <%--</tr>--%>
        <%--&lt;%&ndash;<c:choose>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:when test="${type=='OBJECTIVE'}">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td colspan="2">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<h3><%=((TextSection) section).getContent()%>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</h3>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:when>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:when test="${type=='PERSONAL'}">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td colspan="2">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<%=((TextSection) section).getContent()%>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:when>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:when test="${type=='QUALIFICATIONS' || type=='ACHIEVEMENT'}">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td colspan="2">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<c:forEach var="item" items="<%=((ListSection) section).getItems()%>">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<li>${item}</li>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:when>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:when test="${type=='EXPERIENCE' || type=='EDUCATION'}">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<c:forEach var="org" items="<%=((OrganizationSection) section).getOrganizations()%>">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td colspan="2">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<c:choose>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<c:when test="${empty org.homePage.url}">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<h3>${org.homePage.name}</h3>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</c:when>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<c:otherwise>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<h3><a href="${org.homePage.url}">${org.homePage.name}</a></h3>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</c:otherwise>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</c:choose>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<c:forEach var="position" items="${org.positions}">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<jsp:useBean id="position" type="ru.javawebinar.basejava.model.Organization.Position"/>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td width="15%" style="vertical-align: top"><%=HtmlUtil.formatDates(position)%>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td><b>${position.title}</b><br>${position.description}</td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:when>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:choose>&ndash;%&gt;--%>
    <%--</c:forEach>--%>
<%--</table>--%>
</body>
</html>

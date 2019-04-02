<%--
  Created by IntelliJ IDEA.
  User: kopytg
  Date: 02.04.19
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Goal</title>
</head>
<body>
<form:form modelAttribute="goal">
    <table>
        <tr>
            <td>Enter Minutes</td>
            <td><form:input path="minutes"/></td> // there is setter or getter minutes in goal
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Enter goal minutes"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>

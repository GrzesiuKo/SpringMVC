<%--
  Created by IntelliJ IDEA.
  User: kopytg
  Date: 31.03.19
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Minutes</title>
</head>
<body>
<form:form modelAttribute="exercise">
    <table>
        <tr>
            <td>Minutes Exercised</td>
            <td><form:input path="minutes"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Enter Exercise"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>

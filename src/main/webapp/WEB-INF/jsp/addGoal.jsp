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

    <style>
        .error{
        color: #ff0000;
        }
        .errorblock{
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
<form:form modelAttribute="goal">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <table>
        <tr>
            <td>Enter Minutes</td>
            <td><form:input path="minutes"/></td> // there is setter or getter minutes in goal
            <td><form:errors path="minutes" cssClass="error"/> </td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="Enter goal minutes"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>

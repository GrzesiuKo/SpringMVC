<%--
  Created by IntelliJ IDEA.
  User: kopytg
  Date: 31.03.19
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Minutes</title>
    <script type="text/javascript" src="jquery-3.3.1.js"></script>
    <script type="text/javascript">
        $(document).ready(
            function () {
                $.getJSON('<spring:url value="activities.json"/>',{
                    ajax:'true'
                }, function (data) {
                    var html ='<option value="">--Please Select one--</option>';
                    var len = data.length;
                    for (var i = 0; i<len;i++){
                        html += '<option value="'+ data[i].desc + '">'
                            + data[i].desc+'</option>';
                    }
                    html+='</ option>';

                    $('#activities').html(html);
                });
            }
        )
    </script>
</head>
<body>
Language : <a href="?language=en">English</a> | <a href="?language=es">Spanish</a> | <a href="?language=pl">Polski</a>
<form:form modelAttribute="exercise">
    <table>
        <tr>
            <td><spring:message code="goal.text"/></td>
            <td><form:input path="minutes"/></td>
            <td>
                <form:select path="activity" id="activities"></form:select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Enter Exercise"/>
            </td>
        </tr>
    </table>
</form:form>

<h1>Our goal for the day is: ${goal.minutes}</h1>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: jeryb
  Date: 2018/3/23
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="beans.Information" %>
<%@ page import="dao.InformationDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    InformationDao infomationDao = new InformationDao();
    String area = request.getParameter("area");
    Information information = infomationDao.queryInformation(area);

%>
<table border = 2>
    <tr>
        <td>area</td>
        <td>code</td>
        <td>postcode</td>
    </tr>
    <tr>
        <td><%=information.getArea()%></td>
        <td><%=information.getCode()%></td>
        <td><%=information.getPostcode()%></td>
    </tr>
</table>

</body>
</html>

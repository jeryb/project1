<%@ page import="beans.Information" %>
<%@ page import="dao.InformationDao" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <form action = "index.jsp" methon = "post">
    input area:<input name="area" type="text">
    <input type="submit" value="check">
  </form>
  <HR>
  <%
    InformationDao infomationDao = new InformationDao();
    String area = request.getParameter("area");
    Information information = new Information();
    if(area!=null){
      information = infomationDao.queryInformation(area);
    }


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

  </table>
  </body>
</html>
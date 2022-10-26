<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>form 태그</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<table border="1">
  <tr>
    <th>요청 파라미터 이름</th>
    <th>요청 파라미터 값</th>
  </tr>
  <%
    request.setCharacterEncoding("utf-8");

    Enumeration paramNames = request.getParameterNames();

    while (paramNames.hasMoreElements()) {
      String name = paramNames.nextElement().toString();
      out.print("<tr><td>" + name + "</td>\n");
      String paramValue = request.getParameter(name);
      out.print("<td>" + paramValue + "</td></tr>\n");
    }
  %>
</table>
</body>
</html>







<%--
  Created by IntelliJ IDEA.
  User: heylee
  Date: 2019-02-20
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie cookie = null;
    Cookie[] cookies = null;
    // 获取cookies的数据,是一个数组
    cookies = request.getCookies();
    if (cookies != null) {
        out.println("<h2> 查找 Cookie 名与值</h2>");
        for (int i = 0; i < cookies.length; i++) {
            cookie = cookies[i];
            if (cookie.getName().equals("name")) {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }

            // 没用
            if (cookie.getName().equals("JSESSIONID")) {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }

            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + cookie.getValue() + " <br>");
            out.print("------------------------------------<br>");
        }
    } else {
        out.println("<h2>没有发现 Cookie</h2>");
    }
%>
</body>
</html>

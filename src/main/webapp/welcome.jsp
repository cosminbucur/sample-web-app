<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.net.InetAddress" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <title>Sample Web Application - DemoServlet</title>
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
        }

        table, td, tr {
            border: 1px solid;
            border-collapse: collapse;
        }

        span {
            font-weight: normal;
            font-size: 16px;
            color: black;
        }
    </style>
</head>
<body>

<%
    String hostName;
    String serverName;
    LocalTime time;
    String timeAsString;
    hostName = InetAddress.getLocalHost().getHostName() + " with IP=" + InetAddress
            .getLocalHost()
            .getHostAddress() + " ";
    serverName = System.getProperty("weblogic.Name");
    time = LocalTime.now();
    timeAsString = time.toString();
%>

<h2> This is a Sample Web Application - Demo Servlet </h2>
<hr>

<div>
    <h4>Host Name & IP Address: <span><%=  hostName %></span></h4>
    <h4>JVM Name: <span><%=  serverName %></span></h4>
    <h4> Date & Time: <span><%= timeAsString %></span></h4>
</div>

<h4>HTTP Request URL : <span><%= request.getRequestURL() %></span></h4>
<h4>HTTP Request Method : <span><%= request.getMethod() %></span></h4>

<h4>HTTP Request Headers Received</h4>

<table>
    <%
        Enumeration<String> enumeration = request.getHeaderNames();
        while (enumeration.hasMoreElements()) {
            String name = enumeration.nextElement();
            String value = request.getHeader(name);
    %>
    <tr>
        <td>
            <%=name %>
        </td>
        <td>
            <%=value %>
        </td>
    </tr>
    <% } %>
</table>

<h4>HTTP Cookies Received</h4>

<table>
    <%

        Cookie[] cookies = request.getCookies();
        for (int i = 0; i < cookies.length; i++) {
            String cookieName = cookies[i].getName();
            String cookieValue = cookies[i].getValue();

    %>
    <tr>
        <td>
            <%=cookieName %>
        </td>
        <td>
            <%=cookieValue %>
        </td>
    </tr>
    <% } %>
</table>

</body>
</html>

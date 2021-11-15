<%-- 
    Document   : index
    Created on : Apr 3, 2021, 10:10:40 AM
    Author     : User
--%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab5</title>
        <link href="styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table border="0" cellpadding="3" width="100%">
            <tbody>
                <tr>
                    <td class="head" colspan="2">
                        <%@include file="WEB-INF/jspf/header.jspf" %> <%-- podkluchenie zagolovka i menu --%>   
                    </td>
                </tr>
                <tr>
                    <td class="menu" width="230px" >
                        <%@include file="WEB-INF/jspf/menu.jspf" %>
                    </td>


                    <td class="content" valign="top">
                        <% String msg = (String) request.getAttribute("msg");
                            if (msg != null) {%>
                        <h2><%=msg%></h2>
                        <%}
                            String name = request.getParameter("name");
                            String value = request.getParameter("value");
                            name = (name == null) ? "" : name;
                            value = (value == null) ? "" : value;
                        %>
                        <form action="Registrator">
                            <table border="0" cellpadding="5" class="form">
                                <tbody>
                                    <tr>
                                        <td>Enter parameter name</td>
                                        <td>
                                            <input type="text" name="name" value="<%=name%>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Enter value</td>
                                        <td>
                                            <input type="text" name="value" value="<%=value%>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <input type="submit" value="Delete" name="delete" />
                                        </td>
                                        <td colspan="2">
                                            <input type="submit" value="Save" name="save" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>








    </body>
</html>

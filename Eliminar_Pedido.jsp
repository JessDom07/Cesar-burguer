<%-- 
    Document   : Eliminar_Pedido
    Created on : 28/11/2024, 04:21:47 PM
    Author     : domin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Pedido</title>
    </head>
    <body>
        <% 
            int C=Integer.parseInt(request.getParameter("cod"));
            Connection con=null;
            ResultSet res=null;
            Statement sta=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost/bd_hamburguesas?user=root&password=");
                
                sta=con.createStatement();
                sta.executeUpdate("DELETE FROM t_pedidos WHERE Clv_Pedi = "+C+"");
                request.getRequestDispatcher("Pedidos.jsp").forward(request, response);
            } 
            catch(Exception e)
            { 
                out.print(e+"Ha ocurrido un error");
            }
          %>
    </body>
</html>

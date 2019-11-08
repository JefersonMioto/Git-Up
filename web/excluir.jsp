<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PÁGINA PARA EXCLUSAO DE LIVROS</title>     
    </head>
    
    <body>
         <form action="executar_excluir.jsp" method="post"> 
            <label>CÓDIGO</label><br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>"/><br>
             <label>TITULO</label><br>
            <input type="text" name="titulo" value="<%=request.getParameter("titulo")%>"/><br>
            <button type="submit">EXCLUIR</button> 
         </form>
    </body>
</html>

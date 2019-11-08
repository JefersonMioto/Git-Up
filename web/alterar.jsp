<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PÁGINA PARA ALTERACAO DE LIVROS</title>
    </head>
    <body>
        
        <form action="executar_alterar.jsp" method="post">
            <label>CÓDIGO</label>
            <input type="text" name="id" value="<%=request.getParameter("id")%>"/><br>
            <label>TITULO</label>
            <input type="text" name="titulo" value="<%=request.getParameter("titulo")%>"/><br>
            <label>GENERO</label>
            <input type="text" name="genero" value="<%=request.getParameter("genero")%>"/><br>
            <label>EDITORA</label>
            <input type="text" name="editora" value="<%=request.getParameter("editora")%>"/><br>
   
            <button type="submit">ATUALIZAR</button>
        </form>
        
    </body>
</html>
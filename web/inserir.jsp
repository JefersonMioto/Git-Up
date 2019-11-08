<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PÁGINA PARA CADASTRO DE LIVROS</title>
    </head>
    
    <body>
        
        <form action="executar_inserir.jsp" method="post">
            <label>TITULO</label><br>
            <input type="text" name="titulo"/><br>
            <label>GENERO</label><br>
            <input type="text" name="genero"/><br>
            <label>EDITORA</label><br>
            <input type="text" name="editora"/><br>
            <button type="submit"> CADASTRAR</button>
        </form>
        
    </body>
    
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Livros" %>
<%@page import="DAO.LivrosDAO" %>

<%
try {
     Livros livros = new Livros();
     LivrosDAO lvd = new LivrosDAO();
     
     String titulo_livro = request.getParameter("titulo");
     String genero_livro = request.getParameter("genero");
     String editora_livro = request.getParameter("editora");
     int id_livro = Integer.parseInt(request.getParameter("id"));
     
     if(titulo_livro.equals("") || genero_livro.equals("") || editora_livro.equals("")){    
         response.sendRedirect("index.jsp");
     }else{
             
             livros.setTitulo_livro(titulo_livro);
             livros.setGenero_livro(genero_livro);
             livros.setEditora_livro(editora_livro);
             livros.setId_livro(id_livro);
             lvd.atualizar(livros);
             out.print("<script>alert('Atualizado com sucesso');</script>");
             out.print("<script>window.location.href='index.jsp'</script>");
             
    }   
} catch (Exception erro) {
    throw new RuntimeException("ERRO 9: "+erro);
    
}
%>
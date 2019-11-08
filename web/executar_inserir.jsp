<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="MODEL.Livros" %>
<%@page import="DAO.LivrosDAO"%>

<%
    
try {
   
    Livros livros = new Livros();
    LivrosDAO lvd = new LivrosDAO();
    
    String titulo_livro = request.getParameter("titulo");
    String genero_livro = request.getParameter("genero");
    String editora_livro = request.getParameter("editora");
   
    if(titulo_livro.equals("") || genero_livro.equals("") || editora_livro.equals("")) {
        
        out.print("<script>alert('Campos obrigatórios!');</script>");
        response.sendRedirect("index.jsp");
        
    }else {
        livros.setTitulo_livro(titulo_livro);
        livros.setGenero_livro(genero_livro);
        livros.setEditora_livro(editora_livro);
        lvd.inserir(livros);
        out.print("<script>alert('Cadastro efetuado com sucesso!');</script>");
        out.print("<script>window.location.href='index.jsp';</script>");
    }
    
}catch (Exception erro) {
    throw new RuntimeException("ERRO 3" + erro);
}


%>
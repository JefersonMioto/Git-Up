<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.LivrosDAO"%>
<%@page import="MODEL.Livros"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROVA</title>
    </head>
    
    <body>
  
        <form action="index.jsp" method="post">
            <label>TITULO</label><br>
            <input type="text" name="titulo"/><br>
            <button type="submit">PESQUISAR</button>
        </form>  
        
        <%
            String titulo_livro = request.getParameter("titulo");
            try{
                out.print("<table border='1'>");
                    out.print("<tr>");
                    out.print("<th>ID</th>");
                    out.print("<th>TITULO</th>");
                    out.print("<th>GENERO</th>");
                    out.print("<th>EDITORA</th>");
                    out.print("<th>EDITAR</th>");
                    out.print("<th>EXCLUIR</th>");
                    out.print("</tr>");
                    LivrosDAO lvd = new LivrosDAO();
                    
                    if( titulo_livro == "" || titulo_livro  == null){
                        ArrayList<Livros> lista = lvd.ListarTodos();
                        for(int i=0; i < lista.size(); i++){
                            out.print("<tr>");
                            out.print("<td>" + lista.get(i).getId_livro() + "</td>");
                            out.print("<td>" + lista.get(i).getTitulo_livro()+ "</td>");
                            out.print("<td>" + lista.get(i).getGenero_livro()+ "</td>");
                            out.print("<td>" + lista.get(i).getEditora_livro()+ "</td>");                           
                            out.print("<td><a href='alterar.jsp?id="+lista.get(i).getId_livro()+
                                    "&titulo="+lista.get(i).getTitulo_livro()+
                                    "&genero="+lista.get(i).getGenero_livro()+
                                    "&editora="+lista.get(i).getEditora_livro()+"'>CLIQUE</a></td>");
                            out.print("<td><a href='excluir.jsp?id="+lista.get(i).getId_livro()+
                                    "&titulo="+lista.get(i).getTitulo_livro()+
                                    "'>CLIQUE</a></td>");
                            out.print("</tr>");
                        }
                    } else {
                        ArrayList<Livros> lista = lvd.ListarTodosNomes(titulo_livro);
                         for(int i=0; i < lista.size(); i++){
                                out.print("<tr>");
                            out.print("<td>" + lista.get(i).getId_livro()+ "</td>");
                            out.print("<td>" + lista.get(i).getTitulo_livro()+ "</td>");
                            out.print("<td>" + lista.get(i).getGenero_livro()+ "</td>");
                            out.print("<td>" + lista.get(i).getEditora_livro()+ "</td>");                           
                            out.print("<td><a href='alterar.jsp?id="+lista.get(i).getId_livro()+
                                    "&titulo="+lista.get(i).getTitulo_livro()+
                                    "&genero="+lista.get(i).getGenero_livro()+
                                    "&editora="+lista.get(i).getEditora_livro()+"'>CLIQUE</a></td>");
                            out.print("<td><a href='excluir.jsp?id="+lista.get(i).getId_livro()+
                                    "&titulo="+lista.get(i).getTitulo_livro()+
                                    "'>CLIQUE</a></td>");
                            out.print("</tr>");
                        }
                    }
                out.print("</table>");
            } catch (Exception erro){
                throw new RuntimeException("Erro 6" + erro);
            }
        %>
        
        <a href="inserir.jsp">NOVO CADASTRO</a> 
        
    </body>
    
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.LivrosDAO"%>

<%
try {
     LivrosDAO lvd = new LivrosDAO();
     int id_livro = Integer.parseInt(request.getParameter("id"));
     lvd.excluir(id_livro);
     out.print("<script>alert('Registro excluido ')</script>");
     out.print("<script>window.location.href='index.jsp';</script>");
    } catch (Exception erro) {
        throw new RuntimeException("ERRO 10"+erro);
    }
%>
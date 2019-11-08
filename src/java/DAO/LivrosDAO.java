
package DAO;

import MODEL.Livros;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;

public class LivrosDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Livros> lista = new ArrayList<>();
    
    public LivrosDAO() {
    
    conn = new Conexao().getConexao();
    
    }
   
     public void inserir(Livros livros) {
        
        String sql = " INSERT INTO tb_livros (titulo_livro, genero_livro, editora_livro) VALUES (?,?,?) ";
        
         try{
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, livros.getTitulo_livro());
        stmt.setString(2, livros.getGenero_livro());
        stmt.setString(3, livros.getEditora_livro());
        stmt.execute();
        stmt.close();
        
        } catch (Exception erro) {
            throw new RuntimeException("ERRO 1" + erro);
        }

    }
     
     public ArrayList<Livros> ListarTodos() {
        
        String sql = "SELECT * FROM tb_livros";
     
        try {
            
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
                Livros livros = new Livros();
                livros.setId_livro(rs.getInt("id_livro"));
                livros.setTitulo_livro(rs.getString("titulo_livro"));
                livros.setGenero_livro(rs.getString("genero_livro"));
                livros.setEditora_livro(rs.getString("editora_livro"));
                lista.add(livros);
                
            }
            
        }catch (Exception erro) {
            throw new RuntimeException("ERRO 2" + erro);
        }
        
        return lista;
    }
    
      public ArrayList<Livros> ListarTodosNomes(String valor) {
        
        String sql = "SELECT * FROM tb_livros WHERE titulo_livro LIKE '&"+valor+"%'";
        
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while (rs.next()) {
               Livros livros = new Livros();
               livros.setId_livro(rs.getInt("id_livro"));
               livros.setTitulo_livro(rs.getString("titulo_livro"));
               livros.setGenero_livro(rs.getString("genero_livro"));
               livros.setEditora_livro(rs.getString("editora_livro"));
               lista.add(livros);
            }
   
        }catch (Exception erro) {
            throw new RuntimeException("ERRO 3" + erro);
        }

        return lista;
    }
      
      public void atualizar(Livros livros) {
        
        String sql = "UPDATE tb_livros SET titulo_livro=?, genero_livro=?, editora_livro=? WHERE id_livro=? ";
        
        try {
            stmt = conn.prepareStatement(sql);
        stmt.setString(1, livros.getTitulo_livro());
        stmt.setString(2, livros.getGenero_livro());
        stmt.setString(3, livros.getEditora_livro());
        stmt.setInt(4, livros.getId_livro());
        stmt.execute();
        stmt.close();
            
        }catch(Exception erro) {
            throw new RuntimeException("ERRO 4" + erro); 
        }     
    }
    
      public void excluir (int valor) {
         String sql = "DELETE FROM tb_livros WHERE id_livro = " + valor;
        
        try{
        st = conn.createStatement();
        st.execute(sql);
        st.close();
        } catch (Exception erro) {
            throw new RuntimeException("ERRO 5" + erro);
    }
}
      
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import util.BancoDados;

/**
 *
 * @author sala305b
 */
public class Usuario {

    private long id;
    private String responsavel;
    private String login;
    private String senha;
    private Timestamp dataCadastro;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getResponsavel() {
        return responsavel;
    }

    public void setResponsavel(String responsavel) {
        this.responsavel = responsavel;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Timestamp getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Timestamp dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public boolean TemUsuario() {
        try {
            Connection conn = BancoDados.getConexao();
            String sql = "SELECT id, responsavel, dtcadastro "
                    + "FROM tb_usuario "
                    + "WHERE login = ? AND senha = ? ; ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, this.getLogin());
            ps.setString(2, this.getSenha());
            final ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                this.setId(rs.getLong("id"));
                this.setResponsavel(rs.getString("responsavel"));
                this.setDataCadastro(rs.getTimestamp("dtcadastro"));
                return true;

            } else {
                return false;
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    
    
}

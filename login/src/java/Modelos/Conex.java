
package Modelos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conex{
    private String server= "";
    private String port = "";
    private String user = "";
    private String pass = "";
    private String db = "";
    protected Connection con = null;
    
    public Conex(){
        this.server = "127.0.0.1"; this.user = "postgres";
        this.port = "5432"; this.pass="123456"; this.db = "login";
    }
    
    public void conectar() throws SQLException{
        try {
            Class.forName("org.postgresql.Driver");
            this.con = DriverManager.getConnection("jdbc:postgresql://"+this.server+":"+this.port+"/"+this.db, this.user, this.pass);
        } catch (ClassNotFoundException ex){
            ex.printStackTrace();
        }
    }
    
    public void desconectar() throws SQLException{
        this.con.close();
    }
}


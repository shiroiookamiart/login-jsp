
package Modelos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Usuarios extends Conex{
    
    protected PreparedStatement sql = null;
    protected ResultSet resul = null;
    
    public Usuarios() throws SQLException{
        this.conectar();
    }
    
    public ResultSet validarLogin(String user, String pass) throws SQLException{
        String consulta = "Select id, nombre_user, rol, count(*) as valor from usuarios where nombre_user='"+user+"' and clave_user = md5('"+pass+"') group by(id)";
        this.sql = this.con.prepareStatement(consulta);
        this.resul = this.sql.executeQuery();
        this.desconectar();
        return this.resul;
    }
    
}

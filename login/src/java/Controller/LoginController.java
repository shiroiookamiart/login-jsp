//Desarrollado por David Beltrán fecha 06-2016 

package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelos.Usuarios;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {

    protected String evento = "";
    protected ResultSet sql = null;
    protected String resp = "";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            this.evento = request.getParameter("event");
            switch(evento){
                case "login":
                    String user = request.getParameter("user");
                    String contr = request.getParameter("contr");
                    this.resp = this.validarLogin(user, contr, request);
                break;
                
                case "salir":
                    HttpSession sesion = request.getSession();
                    sesion.invalidate();
                    this.resp = "1";
                break;
                
                default:
                    this.resp = "Evento No Existe";
                break;
            }
            out.print(this.resp);
        }
    }
    
    protected String validarLogin(String user, String pass, HttpServletRequest request){
        String resp = "", nombre = "";
        String rol = "", id = "";
        try{
            Usuarios usuario = new Usuarios();
            this.sql = usuario.validarLogin(user, pass);
            while(this.sql.next()){
                resp = Integer.toString(this.sql.getInt("valor"));
                id = Integer.toString(this.sql.getInt("id"));
                nombre = this.sql.getString("nombre_user");
                rol = Integer.toString(this.sql.getInt("rol"));
            }
            if(resp.equals("0")){ 
                resp = "0"; 
            }else{
                resp = "1";
                HttpSession usuarioSesion = request.getSession();
                usuarioSesion.isNew();
                usuarioSesion.setAttribute("id", id);
                usuarioSesion.setAttribute("nombre", nombre);
                usuarioSesion.setAttribute("rol",rol);
                usuarioSesion.setAttribute("activo", "SI");
            };
            return resp;
        }catch(Exception ex){
            return "3";
        }    
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

<%-- 
    Document   : index
    Created on : 01/06/2016, 06:51:04 AM
    Author     : david beltran 
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <%@include file="./template/cabeceras/css.jsp" %>
    </head>
    <body>
        <nav class="nav navbar-inverse navbar-fixed-top">
            <a id="btn-login" title="Login" class="navbar-brand" href="/login">
                <label>
                    <i class="fa fa-users"></i> Login
                </label>
            </a>
        </nav>
        <div class="separar-30"></div>
        <div class="mensaje">
            <!--alertas-->
        </div>
        <div class="separar-30"></div>
        <div class="separar-30"></div>
        <section class="container">
            <section class="row">
                <article class="col-sm-3 col-xs-2"></article>
                <article class="col-sm-6 col-xs-8">
                    <form class="form-horizontal form-login" id='form-login' method="POST">
                        <fieldset>
                            <legend><i class="fa fa-user"></i> Inicio de sesión</legend>
                        </fieldset>	
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Usuario: </label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" placeholder="Ingrese Usuario" required name="user" id='user'/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Contraseña: </label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" placeholder="Ingrese Contraseña" name="contr" id='contr' required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="pull-right">
                                    <button type="submit" id="login" title='Aceptar' class="btn btn-primary">Aceptar</button>
                                </div>
                            </div>    
                        </div>
                    </form>
                </article>
                <article class="col-sm-3 col-xs-2"></article>
            </section>
        </section>
    </body>
    <%@include file="./template/cabeceras/js.jsp" %>
    <script src="./public/js/login.js"></script>
</html>

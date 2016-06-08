<%-- 
    Document   : index
    Created on : 02/06/2016, 05:28:04 PM
    Author     : david beltrán
--%>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login-Menu</title>
        <%@include file="../cabeceras/css.jsp" %>
        <%@include file="../cabeceras/js.jsp" %>
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
        <section class="row">
            <article class="col-ms-12">
                <div class="col-ms-3 col-xs-3">
                    <%@include file="../cabeceras/menu.jsp" %>
                </div>
                <div class="col-ms-9 col-xs-9">
                    <form class="form-horizontal">
                        
                    </form>
                </div>
            </article>
        </section>
    </body>
</html>

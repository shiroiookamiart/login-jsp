<%-- 
    Document   : menu
    Created on : 02/06/2016, 05:43:07 PM
    Author     : david
--%>
<%HttpSession sesion=request.getSession();%>
<div id="MainMenu" class="cont_menu">
  <div class="list-group panel">
    <a id='mision' class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-eye"></i> Conócenos</a>    
    <a href="#demo1" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-pencil-square-o"></i> Registro</a>
    <div class="collapse" id="demo1">
      <a class="list-group-item" id='docente'><i class="fa fa-graduation-cap"></i> Docentes</a>
      <a class="list-group-item"><i class="fa fa-user"></i> Suplentes</a>
    </div>
    <a href="#demo2" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Inscripciones</a>
    <div class="collapse" id="demo2">
      <a class="list-group-item"><i class="fa fa-file-text"></i> Preescolar</a>
      <a class="list-group-item"><i class="fa fa-file-text"></i> Primaria</a>
    </div>    
    <a href="#demo3" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Suplencias</a>
    <div class="collapse" id="demo3">
      <a class="list-group-item"><i class="fa fa-align-justify"></i> Nueva</a>
      <a class="list-group-item"><i class="fa fa-search"></i> Consultar</a>
    </div>
    <a href="#demo4" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Retiros</a>
    <div class="collapse" id="demo4">
      <a class="list-group-item"><i class="fa fa-users"></i> Estudiantes</a>
      <a class="list-group-item"><i class="fa fa-graduation-cap"></i> Docentes</a>
      <a class="list-group-item"><i class="fa fa-user"></i> Suplentes</a>
    </div>
    <a href="#demo5" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Resumen Final</a>
    <div class="collapse" id="demo5">
      <a class="list-group-item"><i class="fa fa-file-archive-o"></i> Preescolar</a>
      <a class="list-group-item"><i class="fa fa-file-archive-o"></i> Primaria</a>
    </div>
    <a href="#demo6" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Estadísticas</a>
    <div class="collapse" id="demo6">
      <a class="list-group-item"><i class="fa fa-bar-chart"></i> Individual</a>
      <a class="list-group-item"><i class="fa fa-pie-chart"></i> General</a>
    </div>
    <a href="#demo7" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Configuración</a>
    <div class="collapse" id="demo7">
      <a class="list-group-item"><i class="fa fa-user-plus"></i> Nuevo Usuario</a>
      <a class="list-group-item"><i class="fa fa-search"></i> Consultar Usuario</a>
      <a class="list-group-item"><i class="fa fa-database"></i> Respaldo Y Recuperación</a>
    </div>
    <a href="#demo8" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu"><%= sesion.getAttribute("nombre")%></a>    
    <div class="collapse" id="demo8">
      <a class="list-group-item" id="salir"><i class="fa fa-sign-out"></i> Salir</a>
    </div>    
  </div>
</div>
<script src="/login/public/js/menu.js"></script>

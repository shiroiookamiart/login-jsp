$("#form-login").submit(function(e){
   e.preventDefault();
   $.validarLogin();
});

$.validarLogin = function(){
    var data = $("#form-login").serialize();
    $.ajax({
        url:'LoginController?event=login',
        data:data,
        type:"POST",
        cache:false,
        error:function(error){
            console.log(error);
        },
        success:function(resp){
            var ruta = "#";
            if(resp === "0"){
                $(".mensaje").html("<div id='id-men' class='alert alert-info'>Usuario no existe, por favor verifique su informaci&oacute;n</div>");
            }else if(resp === "1"){
                $(".mensaje").html("<div id='id-men' class='alert alert-success'>Bienvendido "+$("#user").val()+"</div>");
                ruta = "./template/menu";
            }else{
                $(".mensaje").html("<div id='id-men' class='alert alert-danger'>Se ha producido un error, intente mas tarde</div>");
            }
            $("#user, #contr").val("");
            $.cerrarMensaje(ruta);
        }
    });
};

$.cerrarMensaje =  function(ruta){
    $(".mensaje").css("display", 'block');
    setTimeout(function(){
       $(".mensaje").css("display", 'none');
       $("#id-men").remove();
       window.location.href = ruta;
    }, 3000);
};
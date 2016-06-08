$("#salir").on("click", function(){
   $.salir(); 
});

$.salir =  function(){
    $.ajax({
        url:'/login/LoginController?event=salir',
        data:{},
        type:"GET",
        cache:false,
        error: function(error){
            console.log(error);
        },
        success:function(resp){
            if(resp === "1"){
                window.location.href = "/login";
            }else{
                //mensaje de error
            }
        }
    })
}


let j=0;
let k=0;
$(document).ready(function(){
    console.log("hola")
    $("#boton1").on("click",()=>{
        $("#cup").css("backgroundColor", "red");
    })
    $("#boton2").on("click",()=>{
        $("#cup").css("backgroundColor", "rgb(36, 16, 122)");
    })
    $("#boton3").on("click",()=>{
        $("#cup").css("backgroundColor", "gold");
    })
    $("#boton4").on("click",()=>{
        $("#cup").css("backgroundColor", "chocolate");
    })
    $("#boton5").on("click",()=>{
        if(j%2==0){
            $("#mangaright").css("animation", "comer 5s ease-in infinite running");
            $("#manoIzq").css("animation", "comer1 5s ease-in infinite running");
            $("#comida").css("animation", "comer2 5s ease-in infinite running");
        }
        else{
            $("#mangaright").css("animation", "comer 5s ease-in infinite paused");
            $("#manoIzq").css("animation", "comer1 5s ease-in infinite paused");
            $("#comida").css("animation", "comer2 5s ease-in infinite paused"); 
        }
        j++;
    })
    k=0;
    $("#boton6").on ("click", ()=>
    {
        console.log(k);
        if(k===0)
        {
            $(".ojo").attr("class", "eyes");
            $("#izq").attr("id", "eyeleft");
            $("#der").attr("id", "eyeright");

            var elementos = $('<section id="sleep"><div id="upzeta"></div><div id="middlezeta"></div><div id="downzeta"></div><div id="uz2"></div><div id="mz2"></div><div id="dz2"></div><div id="bigz"></div><div id="granz"></div><div id="largez"></div></section>');
            $("#cuerpo").after(elementos);
        }
        if(k===1)
        {
            $(".eyes").attr("class", "ojo");
            $("#eyeleft").attr("id", "izq");
            $("#eyeright").attr("id", "der");
            $("#sleep").empty("#sleep");
            k=-1;
        }
        k++;
    });

    $("#boton7").on("click",()=>{
        if(k%2==0){
            $("#roca").css("animation", "rokita 5s ease-in infinite running");
            $("#mangaleft").css("animation", "fuerza 5s ease-in infinite running");
            $("#manoDer").css("animation", "force 5s ease-in infinite running");
            $("#roca").css("display", "block");
        }
        else{
            $("#roca").css("display", "none");
            $("#roca").css("animation", "rokita 5s ease-in infinite paused"); 
            $("#manoDer").css("animation", "fuerza 5s ease-in infinite paused");
            $("#mangaleft").css("animation", "force 5s ease-in infinite paused");
        }
        k++;
    })
});



$(document).ready(function() {
    $(".results").load("./Dynamics/php/Consultas.php");
  $(".submitcarr").on("click", ()=>{
        let filtro = $(".filtmod").val()
        let name = $("#carrera").val()
        let peticion = $.ajax({
            url: "./Dynamics/php/Consultas.php",
            data: {dato: filtro, busq: name},
            method: "POST"
        });
        peticion.done((resp)=>{
            $(".results").html(resp)
        })
        peticion.fail((resp)=>{
            alert("falle");
        })
    });
    $(".filtmod").on("change", ()=>{
        let filtro = $(".filtmod").val()
        let name = $("#carrera").val()
        let peticion = $.ajax({
            url: "./Dynamics/php/Consultas.php",
            data: {dato: filtro, busq: name},
            method: "POST"
        });
        peticion.done((resp)=>{
            $(".results").html(resp)
        })
        peticion.fail((resp)=>{
            alert("falle");
        })
    });
    $
});

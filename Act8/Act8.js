let canva = document.getElementById("myCanvas")
let ctx = canva.getContext("2d")
let fig1= document.getElementById("figura")
//funcion opcion de colores
function opcion(){
    //llamada a valores del color y forma de plasmado
    let col1=document.getElementById("color1").value
    let col2=document.getElementById("color2").value
    let colTipo1=document.getElementById("tipoColor").value
    //llamado al elelmento color2
    let col21=document.getElementById("color2")
    //si se escoje solido
    if(colTipo1==1){
        ctx.fillStyle=col1
        ctx.fill()
        col21.style.display="none"
    }
    //si se escoje degradado lineal
    else if(colTipo1==2){
        //se reestablece el color dos
        col21.style.display="block"
        //medidas del degradado
        let degradado = ctx.createLinearGradient(100, 100, 300, 300)
        //colores que se van a tener
        degradado.addColorStop(0, col1)
        degradado.addColorStop(1, col2)
        //color plasmado en context
        ctx.fillStyle=degradado
        ctx.fill()
    }
    //si se escoje degradado radial
    else if(colTipo1==3){
        //se reestablece el color dos
        col21.style.display="block"
        //medidas del degradado
        let degradado = ctx.createRadialGradient(200, 200, 10, 200, 200, 200)
        //colores que se van a tener
        degradado.addColorStop(0, col1)
        degradado.addColorStop(1, col2)
        //color plasmado en context
        ctx.fillStyle=degradado
        ctx.fill()         
    }
}
//funcion de eventos de cambio de color
function colores(){
    let colTipo=document.getElementById("tipoColor")
    let col11 = document.getElementById("color1")
    let col2=document.getElementById("color2")
    //resultado si se cambia el tipo de plasmado
    colTipo.addEventListener("change", ()=>{
        //llamada a funcion de arriba
        opcion();  
    })
    //resultado si se cambia el color1
    col11.addEventListener("change", ()=>{
        opcion();  
    })
    //resultado si se cambia el color2
    col2.addEventListener("change", ()=>{
        opcion();  
    })
}
//estrella
function estrella(){
        //limpieza en caso de que haya figura antes
        ctx.clearRect(0, 0, 400, 400)
        //inicio del trazado
        ctx.beginPath()
        //posiciones de las lineas
        ctx.moveTo(200,50);
        ctx.lineTo(110,325);
        //grosor de la linea
        ctx.lineWidth = 4;
        ctx.lineTo(339,149);
        ctx.lineWidth = 4;
        ctx.lineTo(61,149);
        ctx.lineWidth = 4;
        ctx.lineTo(290,325);
        ctx.lineWidth = 4;
        ctx.lineTo(200,50);
        ctx.lineWidth = 4;
        //llamada a la funcion colores
        colores()
        //plasmado de los colores
        ctx.fill();
        ctx.closePath();
}
//estrella de inicio
estrella();
//evento para cuando haya cambio de figura
fig1.addEventListener("change", ()=>{
    let fig= document.getElementById("figura").value
    //si se escoge la primera figura
    if(fig==1){
        //llamada a funcion estrella
        estrella();
    }
    //si se escoge la segunda figura
    else if(fig==2){
        //limpieza si hay algo antes
        ctx.clearRect(0, 0, 400, 400)
        //inicio del trazo
        ctx.beginPath()
        //circulo central
        ctx.arc(200, 200, 100, 0, 2*Math.PI)
        ctx.moveTo(120, 120)
        //circulo superior izquierdo
        ctx.arc(120, 120, 60, 0, 2*Math.PI)
        ctx.moveTo(120, 160)
        //circulo superior derecho
        ctx.arc(280, 120, 60, 0, 2*Math.PI)
        colores()
        ctx.fill();
        ctx.closePath()
    
    }
    //si se escoge tercera figura
    else if(fig==3){
        //limpieza si hay algo antes
        ctx.clearRect(0, 0, 400, 400)
        ctx.beginPath()
            //media circunferencia de arribz
            ctx.arc(200, 110, 100, 1*Math.PI, 2*Math.PI)
            //cuerpo
            ctx.moveTo(200, 110)
            ctx.rect(100, 110, 200, 200)
            //pata izquierda
            ctx.moveTo(200, 10)
            ctx.rect(100, 310, 90, 50)
            //pata derecha
            ctx.moveTo(210, 310)
            ctx.rect(210, 310, 90, 50)
            //mochila
            ctx.moveTo(50,120)
            ctx.rect(50, 120, 50, 150)
            colores()
            ctx.fill();
        ctx.closePath()

    }
})

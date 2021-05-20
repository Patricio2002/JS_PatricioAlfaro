let veces;
let res;
let arrGalleta2=[];
let l1;
let l2;
//funcion que se encargará de revisar si la cookie ya existe. Sino crearla
function redirigir(){
    //revision de los lados elegidos
    if(l1=="Izquierda"&&l2=="Izquierda"){
        //creacion de cookie
        document.cookie="cookie=a; expires"+fecha.toGMTString();
    }
    if(l1=="Izquierda"&&l2=="Derecha"){
        console.log("a");
        document.cookie="cookie=b; expires"+fecha.toGMTString();
    }
    if(l1=="Derecha"&&l2=="Izquierda"){
        document.cookie="cookie=c; expires"+fecha.toGMTString();
    }
    if(l1=="Derecha"&&l2=="Derecha"){
        document.cookie="cookie=d; expires"+fecha.toGMTString();
    }
    //almacenar cookie en string
    let a=document.cookie;
    //dividir el = de la cookie y guardar en array
    arrGalleta2=a.split("=");
    //revision del segundo valor del array para redireccion
    if(arrGalleta2[1]=="a"){
        window.location = "./Templates/Casa.html";
    }
    if(arrGalleta2[1]=="b"){
        window.location = "./Templates/Tronco.html";
    }
    if(arrGalleta2[1]=="c"){
        window.location = "./Templates/Hongo.html";
    }
    if(arrGalleta2[1]=="d"){
        window.location = "./Templates/Casa_bruja.html";
    }
}
//lalamda a funcion para revisar si si existe cookie o no
redirigir();
//creacion de fecha para poner temporizador a cookie
fecha=new Date;
fecha.setTime(fecha.getTime()+1000*15*60);
function inicio(){
    //se asegura que ingresen solo valor aceptado
    do{
        //permite que ingresen valores
        res=prompt("Escriba el lado que quiera tomar (Izquierda o Derecha)");
        veces=res;
        //manda mensaje de camino no valido
        if(veces!="Izquierda"&&veces!="Derecha"){
            alert("Camino no valido");
        }
    }while(veces!="Izquierda"&&veces!="Derecha");
    return veces;    
}

setTimeout(()=>{
    //verifica que primer valor ingresado sea izquierda
    if(inicio()=="Izquierda"){
         l1="Izquierda";
    }
    else{
        l1="Derecha";
    }
    //verifica que primer valor ingresado sea derecha
    setTimeout(()=>{
        if(inicio()=="Izquierda"){
            l2="Izquierda";
        }
        else{
            l2="Derecha";
        }
        //en caso de que no exista cookie llama de nuevo la funcion
        redirigir();
    }, 1000)
}, 1000)




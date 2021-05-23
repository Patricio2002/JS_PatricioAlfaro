//funcion que sacará los números aleatorios
function random(){
	return Math.round(Math.random()*3)+1;
}
function resultados (){  
	//extraccion de id de los colores
	const btn = document.getElementById("btn")
	const sec = document.getElementById("section")
	let ama = document.getElementById('amarillo');
	let rojo = document.getElementById('rojo');
	let azul = document.getElementById('azul');
	let verde = document.getElementById('verde');
	let p = document.getElementById('p')
	let g = document.getElementById('g')
  if(resultado[j]!=cambio[j]){
		btn.style.display="none"
		ama.style.display = "none"
		rojo.style.display = "none"
		azul.style.display = "none"
		verde.style.display = "none"
		sec.style.display="none"
		console.log("perdistes")	
		p.style.display="block"
	}
	else if(resultado[4]==cambio[4]){
		btn.style.display="none"
		console.log("lo lograste guapx")
    ama.style.display = "none"
		rojo.style.display = "none"
		azul.style.display = "none"
		verde.style.display = "none"
		sec.style.display="none"
		g.style.display="block"
    
	}
	j++
}
let secuencia;
//funcion que hace que se iluminen los colores
function color(secuencia){
	//extraccion de id de los colores
	let ama = document.getElementById('amarillo');
	let rojo = document.getElementById('rojo');
	let azul = document.getElementById('azul');
	let verde = document.getElementById('verde');
	//cambio del color amarillo
	if(secuencia === 1){
		ama.style.backgroundColor="#fff200";
		rojo.style.backgroundColor="#c91100";
		azul.style.backgroundColor="blue";
		verde.style.backgroundColor="green";
	}
	//cambio del color rojo
	else if(secuencia === 2){
		ama.style.backgroundColor="#edd100";
		rojo.style.backgroundColor="red";
		azul.style.backgroundColor="blue";
		verde.style.backgroundColor="green";
	}
	//cambio del color azul
	else if(secuencia === 3){
		ama.style.backgroundColor="#edd100";
		rojo.style.backgroundColor="#c91100";
		azul.style.backgroundColor="#0080ff";
		verde.style.backgroundColor="green";
	}
	//cambio del color verde
	else if(secuencia ==4){
		ama.style.backgroundColor="#edd100";
		rojo.style.backgroundColor="#c91100";
		azul.style.backgroundColor="blue";
		verde.style.backgroundColor="#60ff2b";
	}
	//se reestablecen los colores originales
	else{
		ama.style.backgroundColor="#edd100";
		rojo.style.backgroundColor="#c91100";
		azul.style.backgroundColor="blue";
		verde.style.backgroundColor="green";	
	}
}

let cambio=[];
let resultado=[];
let i=0;
let j=0;
//evento para que inicie cuando todo haya cargado
window.addEventListener('load', ()=>{
	let boton = document.getElementById("btn")
	//evento que inicie cuando dan click en jugar
	boton.addEventListener('click', ()=>{
      new Promise((resolve, reject)=>{
      setTimeout(()=>{
			//x adquiere el valor de un random
      let x = random()
      console.log(x)
			//el random entra a color para cambio de color
      color(x)
			//x entra en arreglo de secuencia
			cambio.push(x)
      resolve(x)
      },1000)
    }).then((x)=>{
			//termina ell parpadeo
      return new Promise((resolve)=>{
      setTimeout(()=>{
        color(i)
          resolve(i)
        }, 500)
      })
    }).then((i)=>{
      return new Promise((resolve)=>{
      setTimeout(()=>{
				//y adquiere el valor de un random
        let y = (random())
        console.log(y)
				//el random entra a color para cambio de color
        color(y)
				//y entra en arreglo de secuencia
				cambio.push(y)
        resolve(y)
      }, 1000)
      })
    }).then((y)=>{
			//termina ell parpadeo		
      return new Promise((resolve)=>{
      setTimeout(()=>{
        color(i)
          resolve(i)
        }, 500)
      })
    }).then((i)=>{
      return new Promise((resolve)=>{
				setTimeout(()=>{
					//z adquiere el valor de un random
					let z = (random())
					console.log(z)
					//el random entra a color para cambio de color
					color(z)
					//z entra en arreglo de secuencia
					cambio.push(z)
					resolve(z)
      }, 1000)
      })
			//termina ell parpadeo
      }).then((y)=>{
      return new Promise((resolve)=>{
      setTimeout(()=>{
        color(i)
          resolve(i)
        }, 500)
      })
    }).then((i)=>{
      return new Promise((resolve)=>{
				setTimeout(()=>{
					//a adquiere el valor de un random
					let a = (random())
					console.log(a)
					//el random entra a color para cambio de color
					color(a)
					//a entra en arreglo de secuencia
					cambio.push(a)
					resolve(a)
      }, 1000)
      })
			//termina ell parpadeo
    }).then((a)=>{
      return new Promise((resolve)=>{
      setTimeout(()=>{
        color(i)
          resolve(i)
        }, 500)
      })
    }).then((i)=>{
      return new Promise((resolve)=>{
				setTimeout(()=>{
					//b adquiere el valor de un random
					let b = (random())
					console.log(b)
					//el random entra a color para cambio de color
					color(b)
					//b entra en arreglo de secuencia
					cambio.push(b)
					resolve(b)
      }, 1000)
      })
      }).then((b)=>{
				//termina ell parpadeo
        return new Promise((resolve)=>{
        setTimeout(()=>{
            color(i)
            resolve()
        }, 500)
    })
    }).then(()=>{
      return new Promise ((resolve)=>{
				//extraccion de id de los colores
				const sec = document.getElementsByTagName("section")
				let ama = document.getElementById('amarillo');
				let rojo = document.getElementById('rojo');
				let azul = document.getElementById('azul');
				let verde = document.getElementById('verde');
					//revisa si el click es amarillo
					ama.addEventListener("click", ()=>{
						//inserta el valor del color en arreglo
						resultado.push(1);
						
						//parpadeo al dar click
						ama.style.backgroundColor="#fff200";
						setTimeout(()=>{
              resultados();	
							ama.style.backgroundColor="#edd100";
						}, 100)
					})
					//revisa si el click es rojo
					rojo.addEventListener("click",()=>{
						//inserta el valor del color en arreglo
						resultado.push(2);
            resultados();	
						//parpadeo al dar click
						rojo.style.backgroundColor="red";
						setTimeout(()=>{
							rojo.style.backgroundColor="#c91100";
						}, 100)
					})
					//revisa si el click es azul
					azul.addEventListener("click", ()=>{
						//inserta el valor del color en arreglo
						resultado.push(3);
            resultados();	
						//parpadeo al dar click
						azul.style.backgroundColor="#0080ff";
						setTimeout(()=>{
							azul.style.backgroundColor="blue";
						}, 100)
					})
					//revisa si el click es verde
					verde.addEventListener("click", ()=>{
						//inserta el valor del color en arreglo
						resultado.push(4);
            resultados();
						//parpadeo al dar click
						verde.style.backgroundColor="#60ff2b";
						setTimeout(()=>{
								verde.style.backgroundColor="green";
						}, 100)
					})				
      })
					/*for(j=0; j<resultado.length; j++){ 
							console.log("holwis")
							if(resultado[j]!=cambio[j]){
									ama.style.display = "none"
									rojo.style.display = "none"
									azul.style.display = "none"
									verde.style.display = "none"
									sec.style.display = "none"	
							}
							if(resultado.length==5){
								console.log("lo lograste guapx")
							}
							resolve(resultado)
          }*/
				})
      })
    })      
	







class Pokedex {
    constructor(Nombre, Naturaleza, Tipo, Vida, Ataque, Defensa, Velocidad, Nivel){
        this.Nombre = Nombre;
        this.Naturaleza = Naturaleza;
        this.Tipo = Tipo;
        this.Vida = Vida;
        this.Ataque = Ataque;
        this.Defensa = Defensa;
        this.Velocidad = Velocidad;
        this.Nivel = Nivel;
    }

        Subir_nivel() {
            console.log('Su pokemon ha subido de nivel');
            if(Nivel <= 100){
                this.Nivel++;
            }
            else{
                console.log('No se puede subir mas de nivel');
            }

            if(Naturaleza == 'Audaz'){
                this.Ataque+=4;
            }
            else if(Naturaleza == 'Osada'){
                this.Defensa+=4;   
            }
            else if(Naturaleza == 'Cauta'){
                this.Vida+=4;   
            }
            else if(Naturaleza == 'Alegre'){
                this.Velocidad+=4;   
            }
        }
        Presentarse(){
            console.log(' Hola me llamo ' + ' ' + this.Nombre + ' ' +'soy' + ' ' + this.Tipo + ' ' +' y estoy al nivel ' + ' ' + this.Nivel);
        }
        Suma_estadisticas(){
            let suma=this.Ataque+this.Velocidad+this.Defensa+this.Vida;
            console.log(suma);
        }
        Promedio_estadisticas(){
            let prom=(this.Ataque+this.Velocidad+this.Defensa+this.Vida)/4;
            console.log(prom);

        }
}
 const gyarados= new Pokedex(Nombre='Gyarados', Naturaleza='Osada', Tipo='Agua', Vida=95, Ataque=125, Defensa=79, Velocidad=81, Nivel=1);
 gyarados.Presentarse();
 gyarados.Suma_estadisticas();
 gyarados.Promedio_estadisticas();

 const umbreon = new Pokedex(Nombre='Umbreon', Naturaleza='Osada', Tipo='Siniestro', Vida=95, Ataque=65, Defensa=110, Velocidad=65, Nivel=1);
 umbreon.Presentarse();
 umbreon.Suma_estadisticas();
 umbreon.Promedio_estadisticas();

 const pikachu = new Pokedex(Nombre='Pikachu', Naturaleza='Alegre', Tipo='Eléctrico', Vida=35, Ataque=55, Defensa=30, Velocidad=90, Nivel=1);
 pikachu.Presentarse();
 pikachu.Suma_estadisticas();
 pikachu.Promedio_estadisticas();

 const unown = new Pokedex(Nombre='Unown', Naturaleza='Cauta', Tipo='Psíquico', Vida=48, Ataque=72, Defensa=48, Velocidad=48, Nivel=1);
 unown.Presentarse();
 unown.Suma_estadisticas();
 unown.Promedio_estadisticas();

 const lugia = new Pokedex(Nombre='Lugia', Naturaleza='Alegre', Tipo='Volador', Vida=103, Ataque=90, Defensa=130, Velocidad=110, Nivel=1);
 lugia.Presentarse();
 lugia.Suma_estadisticas();
 lugia.Promedio_estadisticas();


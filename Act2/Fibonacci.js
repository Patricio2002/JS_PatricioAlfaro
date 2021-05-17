const Fibo1 = Math.floor( x= Math.random()*10)+1;
const Fibo2 = Math.floor( x= Math.random()*10)+1;
console.log('alto:'+ Fibo1);
console.log('ancho:' + Fibo2);
let Fibonacci = [];

let k=1;
let e=0;
let d=0;
let l=0;

if(Fibo1>1){
    for (let i = 0; i <= Fibo1-1; i++){
        Fibonacci[i] = new Array();
        for (let j=0; j<Fibo2; j++){ 
            let d=e+k;
            Fibonacci[i].push(d);
            if(l ==1){
                e=k;
                k=d;
            }
            l=1;
        }
        if(i%2==1){
            Fibonacci[i].reverse();
        }
    }
}
else{
    for (let j=0; j<Fibo2; j++){ 
        let d=e+k;
        Fibonacci.push(d);
        if(l ==1){
            e=k;
            k=d;
        }
        l=1;
    }
}
console.log(Fibonacci);

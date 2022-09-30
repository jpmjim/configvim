const { ayuda } = require('./helper.js')

// funcion de suma total
const suma = (ns) => {
  let acumulado = 0;
  for (i = 0; i < ns.length; i++) {
    acumulado += ns[i];
  }
  ayuda();
  return acumulado;
} 
// un poco de texto para eliminar
// un poco de texto para eliminar

const numeros = [1, 2, 3, 4, 5];


const multiplicados = numeros.map(x => x * 2)
// a iguales
const parejas = numeros.map(x => [x, x])
// a iguales

const mascotas = [
  { nombre: 'Pelusa', edad: 12, tipo: 'gato' },
  { nombre: 'Puchinr', edad: 12, tipo: 'perro' },
  { nombre: 'Chanchito feliz', edad: 3, tipo: 'perro' },
  { bmre: 'Pulga', edad: 10, tipo: 'perro' },
]
// edad promedio
const edades = mascotas.map(x => x.edad)
const resultado = suma(edades)
console.log(resultado / edades.length);

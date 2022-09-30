# configvim
Configurar VIM como VS Code

## Instalación de vim o neovim
  
  **[Vim](https://www.vim.org/download.php)**

  Nos dirigimos a la página principal de vim, simpre tratar de instalar la ultima version:
  ```bash
  #desde git en la terminal
  git clone https://github.com/vim/vim.git
  cd vim/src
  make
  #desde paquete de ubuntu
  sudo apt update
  sudo apt -y install vim
  vim
  ```

  **[NeoVim](https://github.com/neovim/neovim/releases/tag/v0.7.2)**

  Descargamos el paquete de instalación según el sistema que estes utilizando. Y desde la terminal ejecutar los siguientes comandos en mi caso mi encuentro en Ubuntu:

  ```bash
  #Descargar nvim-linux64.deb
  #Instalar el paquete usanso 
  sudo apt install ./nvim-linux64.deb
  #corremos 
  nvim
  ```
  
- Salir de vim o neovim

  La manera de poder salir es de la siguiente manera:
  ```bash
  #combinaion de teclas 
  - 2 veces tecla esc
  - : dos puntos y la letra q
  **:q**
  ```
- Los modos

  Vim y neovim trabajan con modos, son como capas que van encontrarse encima del teclado por ejemplo: cuando nosotros tenemos presionado la tecla <kbd>SHIFT</kbd> + <kbd>letra</kbd> y presionamos cualquier letra esta se convierte en letra mayúscula.

  Dependiendo en el modo que nos encontremos vim va poder navegar atraves del texto, vamos a poder insertar texto, tambien poder seleccionar texto que se encuentre el foco del editor y tambien poder ingresar comandos dentro de una interfaz que tiene línea de comandos. Ejemplo: al presionar la tecla <kbd>SHIFT</kbd> + <kbd>1</kbd> = **!** el signo de exclamación.

  A medida que medida que vamos avanzando veremos con profunfidad cada uno de los modos que se encuentran dentro de vim.

## Moviendo del curso y entre palabras
  Utizaremos un archivo de referencia **index.js**
  
  Abriremos el archivo con la siguiente sintaxis:
  ```bash
  #en la terminal con vim o nvim
  nvim indes.js
  ```

  Para los movimientos son las siguientes teclas:
  - <kbd>l</kbd> hacia el lado derecho
  - <kbd>h</kbd> hacia el lado izquierdo
  - <kbd>j</kbd> hacia abajo
  - <kbd>k</kbd> hacia arriba
  - <kbd>w</kbd> nos podemos mover mas rapido hacia adelante, lo que hace es llevar el cursor al comienzo de la palabra que sigue o del objeto de texto siguiente. A los parentensis los detecta como otro objeto de texto.
  - <kbd>b</kbd> nos vemos hacia atras, llevandonos tambien al inicio de cada objeto de texto.
  - <kbd>e</kbd> desplazar al final de la palabra.

  Con estas 7 teclas podemos desplazarnos a lo largo de todo el texto.

## Insertar texto y agregarlo al final
  - Para poder ingresar texto presionando la tecla <kbd>i</kbd> cambiando de modo **insert** posicionandonos antes del cursor donde se encuentre ubicado, para poder editar o añadir una cadena de caracteres al archivo. Y cuando queramos salir presionamos la tecla <kbd>esc</kbd> dos veces.
  - Otra forma de insertar texto es con la tecla <kbd>a</kbd> el cual nos va dejar despues donde se encontrara el cursor.
  - Si queremos editar el final de la linea solamente presionamos la A mayuscula <kbd>shift</kbd> + <kbd>a</kbd>
  - Cuando no estamos insertando texto nosotros nos encontramos en el modo normal.

## Eliminar texto
  Eliminar texto dentro de nuestro editor de vim para eso debemos estar en el modo normal nos posicionamos en los caracteres que queremos eliminar 
  - Utilizando la tecla <kbd>x</kbd> caracter por caracter.

## Guardar archivo
  Guardar los cambios realizados en el editor para eso debemos asegurarnos estar en el modo normal:
  - Presionando dos veces <kbd>esc</kbd>.
  - Presinamos dos puntos con la combinacion de teclas <kbd>shift</kbd> + <kbd>.</kbd>
  - Escribimos la tecla <kbd>w</kbd> y enter <kbd>enter</kbd> y los cambios habran sios guardados correctamente. Para verificarlos en la parte inferior de nuestro editor un pequeño mensaje.
  - Otra manera de guardar lo editado es con **:** y escrinimos **wq** lo que hara es guardar el archivo y salir del editor de texto.

## Moverse entre archivos
  Primero de utilizaremos la herramienta de ayuda utilizando las teclas:
  
  - <kbd>gd</kbd> conjuntamente nos ayuda a encontrar la definicion de la palabra donde se encuentra el cursor, en este caso de una funcion llamado ***ayuda*** que se encuentra en el archivo **helper.js**.
  - Si queremos ir al arvicho directamente presionamos las teclas <kbd>gf</kbd> ubicando el cursor encima del texto del archivo al que queremos navegar, antes de todo guardar los cambios realizados.

  Algo muy importante son los **buffers** cada vez que nosotros empezamos a navegar entre archivos o tambien entre definiciones nuestra navegación se empezara a apilar ('quiere decir que inicialmente estabamos en nivel cero en el archivod de index.js y luego de eso navegamos al archivo de helper.js').

  - Si nos queremos devolver en este historial presionamos las teclas <kbd>control</kbd> + <kbd>o</kbd>, creando un indice de navegación entre los archivos y las definiciones haciendo un movimiento hacia atras.
  - Para movernos hacia adelante presionando <kbd>control</kbd> + <kbd>i</kbd>

## Comandos para eliminar, undo y redo
  Ahora vamos haber son distintos comandos para poder eliminar texto en nuestro editor, antes de empezar a eliminar algo debemos estar en **modo normal**.

  - Teclas a presionar son **<kbd>dw</kbd>** para poder eliminar texto un palabra completa.
  - El comando para deshacer presionando la tecla **<kbd>u</kbd>** del ingles ***undo***.
  - Si queremos rehacer nuestros cambios presionamos la combinación de **<kbd>control</kbd> + <kbd>r</kbd>** de ***redos***.
  - Para poder eliminar el texto de una linea usamos **<kbd>control</kbd> + <kbd>$</kbd>** borrara todo la linea según donde se encuentre el cursor dejando la linea completamente vacia.

## Operadores y movimientos
  Como podemos combinar operadores con movimientos empezaremos con el operador de eliminar.

  No solamente podemos combinar con el simbolo de **<kbd>$</kbd>** si no que tambien podemos combinarlos con los operadores de movimiento.

  - Con **<kbd>dw</kbd>** eliminar hacia adelante, **<kbd>de</kbd>**, **<kbd>db</kbd>** eliminar hacia atras. Todos las combinaciones de movimientos con operadores van hacer validas.

  - Tambien podemos utilizar números, podemos hacer es multiplicar esta cantidad  de operaciones con movimientos. De esta forma **<kbd>d4w</kbd>** eliminara la cantidad de palabras establecida.
  - Para movimientos **<kbd>4w</kbd>**, **<kbd>3e</kbd>**, **<kbd>3b</kbd>** para podernos mover.


## Eliminando líneas, pegar y reordenar listas
  Aprender a eliminar y tambien a mantener lo que se elimino dentro del **clean board** es lo que mantiene lo que va hacer pegado despues en otro lado.

  Cuando eliminemos algo esto simpre va quedar en el clean board.

  - Para eliminar una linea completa presionamos la tecla **<kbd>dd</kbd>** dos veces.
  - Para pegar esa linea simplemente presionamos la tecla **<kbd>p</kbd>** direccionado hacia abajo. Ubicando el cursor donde queremos pegar.
  - Si queremos direccionar hacia arriba es con la letra **<kbd>P</kbd>** mayuscula.

  Dentro de vim no existe ***eliminar***, lo unico que existe es **cortar**.

  - Eliminar un caracter con **<kbd>x</kbd>**, al pegar solo se hara lo ultimo que fue recortado.

  - Podemos tambien encadenar con numero por ejemplo: cuando queramos recortar 2 lineas de la siguiente manera **<kbd>2dd</kbd>**.

## Operador de cambio y reemplazar
  Veremos el comando para reemplazar, puede ser el comando menos utilizado.

  - Solamente posicionar sobre el cursor sobre el caracter que queremos reemplzar con la tecla **<kbd>r</kbd>**, nos ahorramos algun tipeado.

  Nos pasamos el operador de cambio que es uno de lo mas utiles. Al querer cambiar una palabra tenemos dos opciones:

  - La forma **fome** te posicionas al inicio de la palabra o donde queramos el cambio con el cursor y solo presionamos **<kbd>cw</kbd>** par ael cierra solo presionamos **<kbd>esc</kbd>**.
  - Cambia la palabra interna pero el objeto de la palabra, teniendo el curso en cualquier sitio dentro de la palabra con **<kbd>ciw</kbd>**, comando muy util al querer reemplazar una palabra.

## Salto a líneas, comienzo, final del archivo y buscar.

  Ahora aprenderemos a saltar dentro del archivo :

  - Para ver en que linea se encuentran es **<kbd>control</kbd> + <kbd>g</kbd>**.
  - Comando que nos lleva al comienzo del archivo con **<kbd>gg</kbd>**.
  - Al final del archivo simplemete **<kbd>G</kbd>** mayuscula.
  -Movernos a una linea en especifico ingresando el número **<kbd>16</kbd> + <kbd>G</kbd>** mayuscula.

  Si queremos buscar desde el cursor:

  - Presionamos **<kbd>/</kbd>** y escribimos la palabra que queramos buscar apareciendo todas las concidencias, desde la posicion del cursor hacia adelante.
  - Si queremos hacer hacia atras con signo de pregunta **<kbd>?</kbd>** y nuestra palabra.
  - Movernos entre las ocurrencias con la letra **<kbd>n</kbd>** hacia adelante y con la **<kbd>N</kbd>** mayuscula hacia atras.

## Saltando al parentesis correspondiente y reemplazando las cadenas
  Como podemos hacer un salto en tre los parentesis correspondiente:

  - Usando el teclado de **<kbd>%</kbd>** porcentaje dependiendo del teclado que tengamos, generalmente en cualquier parentesis que tengamos como ***(), {}, []***:.
  
  Como podemos reemplazar texto que se encuentra en un linea:

  - Para ir al comienzo de una linea presionamos **<kbd>0</kbd>**.
  - Al final de la linea **<kbd>$</kbd>**.
  - El comando de sustituir desde el modo de normal, presionando **<kbd>:/palabra_susti/nueva_palabra</kbd>** por ejemplo dentro de nuestro archivo de index.js con la palabra ***pares*** por ***iguales***, ":s/pares/iguales".
  - Si queremos reemplazar todas las mismas ocurrencia de una linea la misma combinacion añadiendo **<kbd>:s/the/de/g</kbd>** reemplazando absolutamente todas, el cual solo funciona donde solamente se encuentra el cursor.
  - Si queremos que nos reemplazen todas las ocurrencias de un archivo en modo de comando **<kbd>:%s/numeros/unoAlCinco/gc</kbd>** reemplazara una por una preguntando si deseeo hacer el cambio, dandome una serie de alternativas en la parte de abajo del editor.

## Abrir linea, reemplazar, copiar y pegar
  - Para abrir una nueva linea independiente donde se encuentre el cursor presionamos la letra **<kbd>o</kbd>** se abrira la parte de abajo, para hacerlo hacia arriba es con la **<kbd>O</kbd>** mayuscula dejandonos en el modo de insertar.
  - Otra forma de reemplazar con la **<kbd>R</kbd>** mayuscula manteniendonos en el modo reemplazar permitiendo el cursor avanzar.
  
  Cuando queremos copiar algo debemos pasar al modo visual presionando **<kbd>v</kbd>** moviendonos al ***modo visual***.
  - Dentro del modo podemos mover el cursor que asu paso ira seleccionando lo que queramos copiar, al presionar **<kbd>y</kbd>** i griega nos saca del modo visual y posicionandonos en una linea nueva presionamos la letra **<kbd>p</kbd>** o ***P*** mayuscula nos copiara lo antes seleccionado dejando el cursor al inicio o final.    


## Configurando vim o neovim
  Realizar algunas configuraciones a nuestro editor de texto, para poder agregarles un par de funcionalidades mas que ya son nativas de vim y de neovim, un espacio de entorno de desarrollo.

  - Primero debemos buscar nuestro archivo de **init.vim** que se encuentra en la siguiente ruta:
  ```bash
  cd ~/.config/nvim/init.vim
  ```
  - Dentro del archivo de **init.vim** debe tener las siguientes lineas.
  ```vim
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath=&runtimepath
  source ~/.config/.vimrc
  ```
  Esta lineas lo que hacen es que nos permiten el mismo el mismo archivo de configuración para vim y nvim creando un enlace simbolico.

  - Nos pasamos a editar el archivo de **.vimrc** que se encuentra en ***~/.config/nvim/.vimrc***

  - Para ver los cambios solamente salimos y volvemos a ingresar.

  ```bash
  archivo .vimrc
  - set number => lo que hace es setear numeros al lado izquierdo del editor.
  - set mouse=a => nos permite interectuar con el mouse dentro de vim.
  - set numberwidth=1 => el ancho de los numeros.
  - set clipboard=unnamed => para poder copiar dentro del editor con el mouse.
  - syntax enable => para habilitar la syntax.
  - set showcmd => para mostrar los comandos que estoy ejecutando.
  - set ruler => que nos muestre la posicion. 
  - set encoding=utf-8 => codificación de archivos.
  - set showmatch => al posicionarse en un parentesis muestra la ubicacion del parentesis que lo esta cerrando.
  - set sw=2 => para poder identar con dos espacios.
  - set relativenumber => dependiendo de donde se encuentre el cursor la linea donde estamos sera un 0 muy util para movernos entre lineas.
  - set laststatus=2 => la barra de la parte inferior siempre sea visible.
  - set noshowmode => para no ver en el modo que nos encontramos.
  ```

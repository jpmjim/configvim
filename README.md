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

  - Podemos tambien encadenar con numero por ejemplo: cuando queramos recortar 2 lineas de la siguiente manera **<kbd>2dd</kbd>** 
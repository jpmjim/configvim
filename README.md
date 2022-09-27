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


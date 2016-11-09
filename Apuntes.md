# Taller de gráfica digital

## Sesión 01: Processing y su historia

### Línea de tiempo de processing
- John Maeda (1970's) crea Design By Numbers.
- El 2001, Reas y Fry, alumnos de Maeda, crean Processing
- El 2004, Adobe compra todo el software gráfico digital.
- Ya el 2005 se habla mucho de OpenSource y código libre. Con esto se visibilizan Processing, Arduino, PureData
- 2007, tesis de visualizacieon de información

Processing está basado en Java, es un wrapper. Crea applets trabajando con una API (Application Programming Interface) más simple.

p5js es una nueva línea que se encarga de llevar Processing a la red.

### Línea de tiempo de Java
- Late 80's: Aparece Photoshop y desaparece el Arpanet, quedando la Internet
- 1993, aparece la **www** -> visible a través del Browser, "programada" en **HTML** (Hyperlink, hipertexto)
- 1994, aparece **Java** (by Sun) para introducir *interactividad* en la red, mediante *applets*.
- Más tarde, aparece **javascript**, el cual se diferencia al venir embebido en el código HTML.
- Además, aparece Lingo (by Macromedia) -> CDROM -> ActionScript, el cual fue usado por **Flash** (gráfica vectorial con un tamaño muy reducido). Al evolucionar y terminar con AS3, fue un lenguaje muy potente, pero se volvió muy complicado.s

### Processing 3
- Extensión .pde ("Processing Document Environment")
- Al ejecutar el sketch, se abre un "canvas"

- `cmd + k` > Show Sketch Folder. La carpeta del sketch tiene que tener el mismo nombre que el sketch.
- `cmd + shift + e` > Export Application. Crea una carpeta con la aplicación, la cual contiene la app, y una carpeta "source" con el código fuente.

Página de referencias > explica el API de Processing.

#### Syntax
Normas de escritura de código:
- **Comentarios** Escribiendo `/* ... */` lo escrito dentro no forma parte del código, no se ejecuta. Otra forma es usando `//` para comentar el resto de la línea.
- Cada instrucción tiene que terminar con un `;`.
- `{}` para agrupar funciones
- Paréntesis y comillas tienen que ir pareados
- **white spaces** NO son relevantes
- **Case Sensitive** discrimina entre mayúsculas y minúsculas
- `set(x, y, color)` pinta un pixel en el punto x, y, de un cierto color.
- `get(x, y)` adquiere la información de color del pixel x, y.
- `point(x, y)` coloca un punto en la ubicación x, y. Sin embargo, estas instrucciones son un vector, por lo cual pueden ser con decimales.
- `stroke(color)` selecciona el color para los trazados
- `strokeWeight('float')` da el tamaño del trazo

#### Loops (o bucles)
- `for` hace algo para
- `while` haz algo mientras se cumpla cierta condición
- *repeat/until* repite algo hasta que...

#### funciones
- `size('width', 'height')` dicta el tamaño del canvas, en pixeles. La esquina superior izquierda es el punto `(0, 0)` y la inferior derecha es `('width', 'height')`. Recordar que los pixeles son *adimensionales*. Dictamina que el 2D.
- `background('color')` dicta el color del fondo.
- `for('instrucción inicio', 'expresión de condición de permanencia', 'instrucción final')`. Las expresiones se pueden evaluar y *devuelven* un resultado. Comparadores habituales (resultado es un *boolean*):
  - `<` menor a
  - `<=` menor o igual a
  - `>` mayor a
  - `>=` mayor o igual a
  - `==` igual a
  - `!=` no igual a

#### Expresiones
- `a++` es lo mismo a decir `a = a+1`
- `a--` es igual a `a = a-1`
- `a += b` es igual a `a = a+b`
- `a -= b` es igual a `a = a-b`
- `a *= b` es igual a `a = a*b`
- `a /= b` es igual a `a = a/b`
- `a %= b` es igual a `a = a%b`

#### Propiedades
La ventaja de las propiedades es que uno puede modificar el canvas y el código funcionará igual.
- `width` ancho del canvas
- `height` alto del canvas

##### Variables
Tiene tres atributos esenciales: nombre, tipo de dato, valor
1. **Declaración**: Para poder usar una variable tiene que ser declarada primero. `int a;`
- **Scope**: Lugar del código en donde la variable está visible.
- **Asignación**: Darle valor a la variable. `a=23;`

> **Color modes**
Se puede usar `colorMode(RGB)` o `colorMode(HSB)`
- `(0 - 255)` escala de grises, 8 bits.
- `(r, g, b)` modo RGB, red, green, blue. cada variable es de 8 bits
- `(0xRRGGBB)` modo Hexadecimal, cada valor va entre 00 y FF
- `(h, s, b)` modo HSB, hue (tinte), saturation, brightness. cada variable es de 8 bits. El hue es un círculo cromático. Te permite tener un "negro" que conserva información del tinte del pixel. Se puede cambiar la escala con `colorMode(HSB, 360, 100, 100)`, pero no es siempre recomendable.

Mundo *vector* vs *raster*.

El vector toma puntos entre los cuales crea objetos (líneas). Luego, estas líneas son rasterizadas según la grilla que se tiene (proceso ejecutado por el renderer).



## Sesión 02:

Para poder tener control sobre las cosas que creamos, la estrategia es crear los objetos antes, y luego dibujarlos (en vez de crearlos a la hora del display). Así, usaremos **arreglos** para organizarlos.

#### Arreglos
Los arreglos tienen:
1. **DataType** nos dice el tipo de datos que almacena
2. **Dimension** nos dice la cantidad de elementos que almacena
3. **Índice** nos señala la posición de cada elemento

Para almacenar o recuperar el valor en el índice `i` de un arreglo `a`, llamamos `a[i]`. Cabe mencionar, que el primer elemento de un arreglo siempre es el `a[0]`. Esto quiere decir que si un arreglo tiene `n` elementos, los índices van del `0` al `n-1`. De esta forma, estamos usando arreglos para guardar las **propiedades** de distintos objetos.

#### Objetos
Otra forma que tenemos de tratar con todo esto, es crear objetos que contienen sus propias **propiedades** y **métodos**. El objeto es un *tipo de dato*
1. **Atributos / Propiedades**
2. **Métodos / Funciones**
  1. **Constructor**: Una de las funciones tiene que ser el constructor de la clase.


#### Encapsulamiento
Cada segmento del código tiene una función específica. No hay ambigüedades.

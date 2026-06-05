### NOTAS CLASES 1
- La idea de normalizacion se entiende sobre la nocion de los datos.
- Si por ejemplo yo modelo alumnas, puedo tener unta abla que respenta la ifno de alumnos y una qu representa las masterias a las cuales esta inscriptos.
- La definciones de nromalizacion, calve y calve candidata se puede aplicar a todo tipo de modelo y distintos ambitos. Uno de los ambito es ver informacion sobre un determinado momento. Puedo solo sin mirar el nombre de las columnas, con solo los datos razonar por medio de estas ideas. Una cosa va a ser analizar los datos y otra va a ser asumir ciertas restriccciones sobre mi base, es decir utilizo las defincion para definir como voy a construir mi base.
En una opcion razono sobre los datos, en otra elijo como modelar. 
Por lo tanto los conceptos se aplica en como vo la readlidad, de como voy a moldear mi realidad o sobre un cojunto de datos X  sobre el total de los mismos. 

### NOTAS CLASES 4
la base es una api, el que se conecta es un cliente. a cuqlueir transaccion la base la puede matar y recibe la respuesta el cleinte, frente a esto se puede volver a intentar la transccion o no.Cuando se mata igual hay que avisarle al usuario. lo que no puede es la base reintentar la transaccion, por que? por que la base no puede saber si el que le esta mandando depende de algo que el backend le haya contestado. El cliente en un momemnto quiso hacer eso, no puede suponer que va a querer hacerlo de vuelta de esa manera. 

undo logging: la velocidad de lectura tiene que ver con la cache, donde muy probablemnte lo que se lee ya este en el disco. el cahce managemte garabtiza la velocidad de lectura. la escritura depende de otra cosa, depende de la unidad recuperacion. como hace para que hay velocidad de ram en disco para la escirtura? tengo un bloque, donde mcuas transacciones quieren escribir a la vez cayendo en distitnos bloques. 
si el bloque de logs se lleno lo guardo a disco, y dps recine de guardar el log se le da el okey al cliente. esto para segurar primero tener el contexto y luego los cambios. 
la idea es que com tengo un buffer gaurdo todo en losg ahi, y luego mando todos juntos. mejoro el troughput. para la escirtura el log ayuda a mejorar la veloidad, para la lectura la cache. la ventaja es que el log puedo escribir todo junto

### Notas clase 5
el plan de ejecucion se ve como un grafo que se lee de izquierda a derecha, donde cada uno representa una operacion.
el query compiler recibe una query y genera un arbol de parseo. a esto se llama parsero compiler.
luego lo recibe el preproseamiento que hace un chequeo semmantico.
el plan de ejcucion termina de ser elegido por el optimizer
luego el que lo ejeucta es el query executor.
cada operacion del grafo habla con el transaction managaer. 

el plan logico no es lo mismo que el fisico.

por que usario un sacn usanod un indice? no siempre es mas rapido. si es clusterin es mejor porque e mas eficnete la tener todas las cosas juntas

programacion dinamica: la ventaja es la memorizacion. 

siguiente clase: desde que recibe el comnado, comando sql principlaes, que se puede escirbir, el join. Vemoas unn pooc sql ycomo fnciona el aprser y etc

### Nota clase 7
tener un problema de big data no esta determinado por si tengo variedad de formatos de la informacion. cuando un sujeto tiene un problema de big data, tiene acceso a un flujod de datos muy grande que no lo puede almacenar. En alguno lado estan, pero el sujeto no los puede almacenar. 
Si los datos tienen variedad de formato y los puedo almacenar, y tengo una variedad razonable, no es big data. la variedad no es condicion sufiente para hablar de big data. Solo con la caracteristica de volumen ya es big data.

Fundamentla en no SQL, ya que vale en todas, no obliga a definir el esquema de la base de datos.

si la base soporta json entonces se resuelven dentro del motor de la base de datos. si tengo que leer los daots en json, y aplicar los filtros en el bekcned eso no es una base de json.los docuemntos tiene un indice que se peude index por fuera de la base. Se puedne crear objetos distitnos a los almacenados, se puede devoler lista u otras cosas. 
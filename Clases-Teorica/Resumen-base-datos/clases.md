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

### CLASE SEGURIDAD
Es lo mismo un usuario y un rol, la diferencia es que el usuario es al que le doy el rol. Todos los sietmas deberian tener la posibilidad de delegar responsabilidades, que es el equivalente a prestar contraseñas, pero sin que sea eso. La idea es que el software tenga la psibilidad de delegar responsabilidades. El principal problema de esto es que no quiero que la persona a que se le delaga tenga los mismos privilegios que yo. 
cosas importantes: delegar parcialemnte y el revocar, poder sacar los privilegios al que se los di.
si revoco al que doy? se elimina a los que estana abajo? ahi se debe poder elegir entre si revoco por cascada o con la confiana que tengo ahora.
Muy pocos sistemas tienen la capciadad de aprobar de forma autmatica roles a la hora de asignarlos.

Cuando se crea un rol se puede decir si este es superusuario. Luego se le puede definir si puede generar roles, o bases de datos. Se se puede heredadr, este es un rol heredable?, si se puede logger o no (Un usuario que no se puede loggear es un rol), 
Cuando le doy permiso a un rol simplemente es meterlo dentro de otro. 

Hay diferencia entre la seguridad de la base y la seguridad del backend. Inyeccion de codigo es una de las cosas que puede pasar en el backend, esto puede generar el poder hacer consultas que el programador no estab esperando. Al bakend se le da un usuario para poder definir que es lo que puede hacer con la base, hay que tener cuidado que usuario se le de, que cosas va a poder hacer el backend. Algo interesante es que cada usuario tenga su usuario de base de datos, pero esto se acepta. por lo general se busca dividir en varios roles, donde se separa los roles que puede hacer todo y otro intermedios. Pueod tener uno para el sistema auteifcaicon que lo unico que necesita es saber que persona es y si esta activo, esto principalemnte porque cuando se loggea la persona que esta queriendo entrar puede ser cualqueir, por lo tanto no debo exponer tanto.

para poder dar roles se usa la funcion GRANT, se agregar el prmerios que se puede dar luego es optativo el objeto que se asigna de la base. Lo ultimo es el To donde se pone el nombre del usuario o el rol. se puede dar gran option que es de que al rol que se le otorog tambien lo puede dar a otro. Tambien esta el granted by, para que necesito poder especificar quien el dio el rol? .
La opcion references es que puedo egnerae refrencia de forein gkye y trigger es que puedo genera trigger. 
Se puede poner un privilegio or columna, donde despues de ar un permiso por ejemplo select, pongo la lista de columnas del mismo. por ejemplo en un istsmea de logic, le hago un grant de select usrname, has password, methos....., que pueda seleccionar solo lo minimo que necesita para hacer su funcion.

perimisos en bases de datos y esquemas, la base dea dtos es la unidad donde tiene sentido el acid, en un serviod puede tener mas de una basa. la base se divide en esquemas. Los esquemas lo mismo, tengo permisos para usarlos o crearlos. 

Permisos para procedimientos o funciones, el segundo devueklve un valor el otro no. postgres permite sobrecarga, se puede tener la funcion con mi nombre pero distintos parametros. cuando se posee esto el permiso se define por el nombre + los parametros, para poder identificar a que funcion se le da permiso. le puedo dar permisos a ciertos usuarios para ejecutra ciertas funciones o procedimientos. En sql cuando se crea un procediimiento o funcion, se puede definri lo que es security invoker o securit definer, si es invoker se ejcuta de quine lo invo, si se pone define se ejcuta por quien lo define. El segundo parece un peligro, pero puede generar una solucion a otros problemas. Par que un usuario que no quiero manipule algo, puede generar una funcion o procedimiento que ejecute con el permiso de quien la definio y de esta forma ahorame darle el privilegio sobre la tabla que quier modificar. Las funciones se definem en plp, se puede definir funciones como inmutable, es aquella que no escribe la base. Si la funcion es estable, significa que depdende del estad de la base de datos, si la base no cambio, devuelve simepre lo mismo, no modifca y solo depedne del estado actual de la base. una que es volatil puede modificar la abse de datos, devolver algo, etc.
Lo ultimo que tenemos es not leak proff, es importante para el analisis de seguridad. que cumple eso signifca que no se escapa nada, que no se produzar side effects que no llegen al bakend, si se lanza una excepcion va a ser tabulada y pura. 

Dentro de los roles, uno deberia poder tener la posibilidad de degradarse en rol, para poder impersonar otra perosna con el fin de msotrar lo que esta queriendo hacer.Cuando se cre un rol, sie ste tiene muchos priviliegios no deberia estar actviod desde el principio, para eso se usa la opcion set false, que permite establecer que no va a estra activo desde el princpio.

seguridad por filas, una forma de por ejemplo tener varias instancias, por ejemplo si tenngo varias sucursales de un negocios es usar lo siguiente: cuando hago elect de las ventas, se ejeucta uan funcion que chequea una nueva condicion, que evalua que la sucursal sobre la que se quiere ver es la que seesta consultado, esto es lo que se define como uan policy.. Esto es mejor que por ejemplo tener un esquema por cada suucurlas, pero si cambia un cmapo o alo agrgo tengo que agreglo en cada esuqema, en otro lado es gargear un sucurslo como campo, peor genera porblemas con los joins.

si tengo el permios de update, puedo hacer cambio deun resgirtro por medio de una fucion o procedure que me permite cambiar lo que se pide.

### CLASE INTEGRACION
cuando teniamos un query, primero se parseaba. Ese parser devuelve un arbol. Luego ese arbol, que es un arbol sintactico. Se hace un preprocesaimiento luego donde se verifican los tipos, en esto se chequan que lo tipos concuerden y los campos existan. 
Si por ejemplo tengo un update lo divido en cada cosa, por ejemplo en target voy a tener una tabla que es lo que voy a updatear, si no esta tiro un error. 
Luego cuando se sube el arbol se debe llegar a una expresion que tenga el tipo que se necesita. Por lo tanto el preprocesameinto devuelve un arbol verfiicado
Luego viene la parte de optimizacion, que de vuevle otro arbol ya optimizado. Luego se selecciona el plan de ejeuccion donde se establece que algoritmos se ejecutan para las instrucciones. Que forma tiene el plan de ejecucion? sera un grafo.
Una vez generado el plan de ejecucion, cada nodo va a terminar siendo un agente real, y cada uno va a teerminar hacinedo algo. el plan de ejecucion me determina que agentes van a usarse.
Dentro de los ndos tenog por ejemplo scan, filter, ect. La idea es conectarlo. Los que no tienen flecha que entrar son iniclizadores, estos le van mandadon infomracion a los otros agentes y el ultimo sera el que da el resultado. 
Las capas que ya conociamos, (transaction manager, shcheduler,  cache manager, recovery manager, disco), como se conectan las capas que ya teniamos con el plan de ejecucion? 
Una vez que tengo el plan, y sus agantes, algunos como el sacn o el seek lo que hacen es hablar con el transaction manager.En general los incializadores van a empezar a traer coas del disco, que traen registros de los indices o de las tablas. por lo tanto el scan lo que hace es traer datos de las tablas. Un avez que los levanto se los pasa al transaction manager, cada uno de estos agentes va a ser de una trsancciont. Dentro de cada trasnacion, por cada instruccion voy a tener un agente, y cada uno va a concoer el contexto de su transaccion. Luego el output de un agnete sera el input de otro, pasa psuedo registros. un filter o un order no necesita hablar con el transaction manager, quizas con la cahce (cuando digo filter u order hablo de su agente). 
Dentro de estos tengo el merge join, que recibe dos flujos ordenados y se junta lo que se atchea y loq ue no. o tengo uno de cualquier orden y voy buscando las claves que me sirven. 
Cada nodo o bien lee del transaction manager, o manda flujo de un lado al otro, o si fuera un update hace el mimso y tambien habla con el transaction manager. 
Para poder llegear del arbol al plan de ejeuccion se usan estaditicas, que por lo general tienen histogramas. para esto se guarda en realcion a los datos. En el plan de ejeuccion, dependiendo de los datos que se pinda, se vana a ejejuctra planes de ejeuccion distinto, debido a que se resulve por est heuristicas. Esto peomite por ejemplo de definir el tipo de join, si tengo pocos es un hsh join, si tengo indies es un merge sort, sino a veces conveine trear todo y hacer un filter, etc. 

por como se dan las transacciones si empiezo a hacer varios inserte puedeo tener distintas ids autonumericos insertados. 

la base de datos te hace esperar, no graba el log automaticamente al hacer commit, te hace esperar por lo menos un ciclo de disco. la magia es poder obtener grana peidos a la vez, pero sin hacer mostrar la espera. Disco a la velocidad de la ram significa que voy ahcer mil operaciones en mil microsegundos, con el hipotico caso del que el disco es mil veces mal lecnto de la ram. Puedo tener esto bajo la hipotesis de poder paralizar, de que siempre se usan las mimas tablas. En esas codinciones yo puedo hacer mil operaciones, que supuestamente usaron el disco, como si usaran la ram mas un operacion de disoc, que esta escirura al sdicos.
El secreto esta ahi, por ejemplo tood sicen commit, llene la cache y luego les digo que hice commit. A la larga la veocidad esta dada por que la termina de hacer en cierto tiempo, no porque realice muchas escrituras a disco de forma rapida. 




## 1.1
a)
- W -> Y (1)
- WX -> YX Aumento (2)
- YX -> YX Reflexividad (3)
- WX -> Y Transtica de 2 y 3 (4) 

b)
- Z Subcojunto de Y (1)
- Y -> Z, Reflexividad de 1 (2)
- X -> Y (3)
- X - > Z  Transtividad de 2 y 3 (4)

c)  
- X -> Y (1)
- X -> W (2)
- WY -> Z (3)
- X -> WY Union de 1 y 2 (4)
- X -> Z Transitivvidad de 3 y 4 (5)

d)
- XY -> Z (1)
- Y -> W (2)
(Invalida)


e)
invalida


## 1.2
$F_{a}⁺$ = {}

Preguntar si hya una forma mas sencilla de hacre esto en vez de calcular toda la clausura

## 1.3
No hace falta aplicar tablue para resolver esto. Como son visiones bianrias solo debo ver que: 
- $(R1 ∩ R2 ) → (R1 − R2 ) ∈ F^{+}o
(R1 ∩ R2 ) → (R2 − R1 ) ∈ F^{+}$

a)
- Como la interseccion es vacia podemos decir que no sera SPI.
- Preservacion de dependencias:
    - D -> A se conserva dentro de la particion (A,D)
    - B -> Se conserva dentro de la particion (B,C)
    - Se preservan las dependecnias funcionales
b) 
- No posee perdida de informacion, al unir las desompociones tenes {A,B}, la clasura de {A,B} = {A,B,C,D} que forman una superclave para ambas particiones.
- Preservacion de dependencias:
    - AB -> C se preserva en la segunda particion
    - C -> A se preserva en la segunda particion
    - C -> D Cruza los esquemas: 
        - C = Z
        - C Interseccion (A,B,C) = C. Por las DF dentro de la relacion local llego a A, luego Z = {A,C}
        - Con A puedo inteart curza, {A,C} intersectado R1(A,B,D) = A. no tengo ninguna regla para aplicar con A
        - Luego Z = {A,C}, no llego a D
        - No se preservan dependencias   
c) 
- La interseccion del esquema solo posee C, la clasura de C = {A,C,D}, luego determina la descompoison R2, por lo tanto sera losless join.
- Preservacion dependencias:
    - C -> A, vale en la particion R2
    - C -> D, vale en la particion R1
    - AB -> C, cruza:
        - Z = AB
        - Tomo Z interseccion R1 = {B}. No puedo genera nada, no tengo regla que aplique solo b
        - Tomo Z interseccion R2 = {A}. Luego aplico localmente C -> A, no puedo sumar nada
        - Luego Z = {A,B}
        - No se preservan las dependencias. 

d)
- La interseccion me da {B}, la clausura sera B = {B,C,D}. Sera superclave de la segunda particion.
- Preservacion de depencias:
    - A -> B se preserva en R1
    - B -> C se preserva en R2
    - C -> D cruza:
        - Tomo Z = {C}. no tengo nada para aplicar en R1, al interescetar, lo mismo para R2
        - Luego no se preservarnm las dependencias

e)
- La interseccion me da D, donde su clausura es D={D,A}. No ser superclave de ninguna particion.
- Preservacion de depdencias:
    - D -> A se preserva en R1
    - B -> C cruza
        - Tomo Z  = {B}. Si tomo R1 interseccion Z, no obtengo solo B, no hay anda para aplciar. Luego para R2 es vacias.
        - No preserva las dependencias

f)
- La interseccion me da {A}, la clausra sea todo R. Sera superclave de cualqueir aprticion dad que la clasura determina todo R. 
- Preservacion de dependencias:
    - A -> B se sostiene localmente en R1
    - C -> D se sotiene localmente en R2
    - B -> C cruza:
        - Z = {B}. 
        - No tengo forma de llegar al otro lado por meio de B
        * No se preservan

## 2.1
a)
Sabemos que siempre esta en 1FN.
Veamos las claves:
- {E,G,I} son los unicos atributos sobre los caules no puedo llegar por medio de una dependencia
- Calculo su clausura:
    - Solo puedo aplicar I -> C, luego necesito agregar algun atributo mas
- Probando con {E,G,I,D}
- Calculo clausura:
    - {E,G,I,D}+:
        - Aplico I -> C, tengo {E,G,I,C,D}
        - Aplico D -> H, tengo {C,D,E,G,H,I}
        - Aplico CD -> D, tengo {C,D,E,F,G,H,I}
        - Aplico H -> AD, tengo {A,C,D,E,F,G,H,I}
        - Aplico A -> B, tengo {A,B,C,D,E,F,G,H,I}
        - Como al clausura es igual a la relacion, tengo una clave candidata
    - {E,G,I,H} tambien sera candidata, porbando la clausura, podemos llegar al conjunto de la relacion
- Luego nuestras claves candiditas seran {E,G,I,D}, {E,H,I,H}

- Segunda forma normal: Estara si todo atributo no primo (Que no pertenece a una clave candidata), no es parcialmente dependiente de alguna clave de R. No estara en segunda forma normal, tal que por ejemplo AD, o C, dependen parcialmente de las claves

- 
## 2.2
Podemos decir que:
- F = {URL -> AUTOR,TITULO; URL,AUTOR -> TITULO, URL,TITULO -> AUTOR}
- La ultimos dos, por axiomas de amstrong generan redundanci. Por lo tanto el conjunto completo de depdencias funcionales sera: F = {URL -> AUTOR,TITULO;}. Key word no queda determinada por ningun atributo debido a que cada pagina puede poseer muchas keyowrds.
- Podemos decir que no esta en FNBC. Si analizamos las depdendencias, mas la relacion dada, la unica clave candidate sera {URL, KEYWORD}, luego tenemos que la unica dependecia funcional dada, esta sostenida por URL solo. 

## 2.3
a)
Tenemos que la relacion sera R = {ABCDEI}. Analizando las dependecias funcionales, tenemos que puedo llegar por medio de ellas a D,B,C,E. Por lo que probablamente la clave esta conformada por {A,I}. analicemos la clausura de la misma:

- {A,I}^+:
    - Aplicando A -> D, tenemos {A,D,I}
    - Aplicando I -> B, tenemos {A,B,D,I}
    - Aplicando IA -> C, tenemos {A,B,C,C,I}
    - Aplicando B -> E, tenemos {A,B,C,D,E,I}  = R
    - Luego {A,I} sera clave

b)
- Para chequear SPI, ver ejercicio de tableau hecho en apunte
- Veamos SPDF:
- I -> B Vale localmente en la particion {I,B}
- IA -> C vale localmente en la particion {I,A,C}
- A -> D , vale localmente en la particion {A,D}
- B -> E, cruza el esquema:
    - Tomemos Z = {B}:
        - Si tomento {B} interseccion {B,I}, ontengo B. Y no puedo seguir para ningun otro             camino
        - Para el resto de los esquema la interseccion es vacia. Luego no puedo derivar B -            >E
- La particion no preservar las dependencias funcionales     

c)
Sabemos que {A,I} es clave. Por lo tanto la primer opcion de 3FN no la cumple que es que para toda depencia funcional X-> Y, X sea superclave. Podemos ver que como {A,I} es clave, neceitariamos tener por lo menos algun elemento mas sobre {A,I}.

La segund opcion tampooc vale, solo tenemos una clave posible, dada por{A,I}, por lo tanto no valdra que los arguemnto de la izquierda de la dependencias son primos

Para construir la 3FN:
- Primero definimos una cobertura minimal F_m. primero descompongo en atributo simples a la derecha, esto ya ocurre: {A->D, I->B, IA ->C, B->E}. Quedara igual, no hay nada redundante para sacar.
- A partir de la F_m creo los esquemas: {{A,D},{I,B},{IA,C},{B,E}}. No tengo nada que unificar, la clave ya esta y asu vez no hay redundancia, por lo tanto esta particion si esta en 3FN.

## 2.4
Uitilizemos el algoritmo de 3NF, el mismo garantiza que no solo va estra en este modelo sino que tambien va a posee la propiedad de SPI y SPF. 
Primero obtengo la cobertura minimal. Dividimos los lados izquierdos, tal que queda {C -> E, D -> B, D->H, EH -> A}. No posee information redudnate asi que probalmente esa sea la cobertura minimal. 
Dividimos en esquemas, tal que tengo {{C,E},{D,B},{D,H},{EH,A}}. Lo que nos falta ver ahora es cual es la clave, con el fin de poder identificar si esta dentro de algun esquema. 

tenemos que R = {ABCDEFGHI}. A partir de las DF que nos dan, sabemos que puedo llegar a los atributos A,B,H,E. El resto no, por lo que podria ser una lcave todo el conjunto dado por {C,D,F,G,I}.

Luego para completar la formula normal nos queda agregar un esuqema con la clave, por lo tanto tenemos:{{C,E},{D,B},{D,H},{EH,A},{C,D,F,G,I}}. Esto sera SPI y SPF

Con respecto a FNBC, sabemos que la clave es {C,D,F,G,I}, Como es minimna otroa supercalve debria ser igual o mas astributos. A paritr de eso podemos decir que a la ziquierda de binguna dependencia funcional tnemos un superclave, por lo anto no esta en FNBC

## 2.5
a)
Tenemos que {AGCE} representa una clave, por lo tanto es una superclvae minima. Por cardinalidad, como es la unica clave, sabemos que no existe otra superclave de la misma logintud, y de existir otra superclave deberia contener estos atributos y algunos mas. 

Si estuviera en 3NF, vale que:
- Para toda X -> A, X es superclave. Por lo dispuesto arriba podemos decir que esto no vale
O puede valer que:
- A es primo. Como {AGCE} es la unica clave, y B no pertenece a la misma, podemos decir que la condicion no se cumple.

Redundancia y modificacion?

b) 
Primero obtenemos la cobertura minimal. Esta simlificada pero hay redundancia:
- F_{m} = {A->B, B->D}
- Luego tenemos los subesuqmeas {{AB}{BD}}
- Agregamos una para la clave {{AB}{BD}{AGCE}}

c)
Sabemos que las dependencias funcionales se mantienen, tal que algoritmo planteando preserva las dependencias y a su vez es SPI.
Analicemos las dependencias sobre cada subesquema:
- Para {A,B} sabemos que surge de A->B, por lo tanto la supercalve dentro de este esuqmea es A, luego se cumple localmente que A->B y A es superclave, mas aun es clave
- Para {B,D} vale la mims aidea que para {A,B}, localmente se cumple que valñe B->D.
- Para el ulitmo subesuqme ano tenemos ningun tipo de dependencia funcionla, por lo tanto vale.

Podemos decir que estar en FNBC

## 2.6
a)
{FUTBOLISTA -> CLUB, PERIODISTA -> MEDIO, REFERI -> DIVISION}

b)
Como todas las dependencias funcionales son de de 1 a 1, la unica forma de recomponener toda la relacion es a aprtir de tener como calve {FUTBOLISTA,PERIODISTA,REFERI}. Es la unica forma de aplicar dependencia de maner tal que pueda obtener todo el modelo. 

A su vez es minima porque si sacamos algun atributo de la misma, no podramos configurar toda la relacion.

c)
Se puede ver a simple vista que cada depencia se preserva de manera local para cada subesquema,. tal que se genero en base a las dependencias dadas.

d)
Tenemos que hacer las juntas naturales entre:
- {R1} junta {R2} junta {R3} junta {R4}

LO que es extraño es que si tomamos en cunta la ultima relacion, tenemos repertir furbolitsa. Luego si hago la union de las R, lo que obtengo no es la relacion originla, tengo repetida el aitributo futbolista

Analicemos las juntas:
- Podemos obtener (F1,C1,P1,M1,R2,D2), lo cual no esta en la instancia original. Por lo tanto el join no es lossles

e)
Ahora tenemos que agregar {CLUB -> MEDIO}. Por lo tanto el conjunto de dependencias queda como:
- {FUTBOLISTA -> CLUB, PERIODISTA -> MEDIO, REFERI -> DIVISION, CLUB -> MEDIO}

En este caso tenemos que para D1, la nueva dependecnia cruza los esquemas. Vemaos si las mantiene:
- Z = CLUB
- Con la unica particion que nos da algo es R1, pero el aplicar ahi no nos da ninguan dependencia extra para aplciar
- Por lo tanto no podemos seguir
No se mantiene las dependencias funcionales

Podemos descomponer en 3FN. El algoritmo garantiza que va estar en SPDF y SPI. Mas importante en nuestro caso es que este en SPDF.
- La cobertura ya es minila, por lo que no hay muchas mas que realiza ahi.
- Dividimos en {{FUTBOLISTA,CLUB}{PERIODISTA,MEDIO}{REFERI,DIVISION}{CLUB,MEDIO}}

- En este caso al agregar la DF {CLUB -> MEDIO} se modifico la clave. En realidad no se modifico la calve, solo tengo un camino mas para obtener la ifnormacion, pero sigo necesito la misma. por lo tanto agregar un esquema {FUTBOLISTA,PERIODISTA,REFERI} para la clave.

## 2.7
a)
Tenemos las siguiente anomlias:
Redundancia: si un persona por ejemplo tiene varios hijos o distitnas direcciones, vamos  atenre que tener una entrada con los mismos datos por cada persona que se incerta en la tabla. 

Actuailziacion: Si una persona cambia su nombre por ejemplo, direccion o algun otro datao de la mimsa. Tengo que actualizar varias filas, correpsoniented por ejmplo ac ada hijo. Lo mimos si tuviera que actucliza algun dato de donde vota. 

Borraado: si por ejemplo quisieramos borrar un hijo de ujna persona o una direccion, debemos borrar todos los datos de la misma. Lo mismo si la persona ya no votora o tuvuera otra direcion de votado. 

Insercion: vamos a tener que dar de alta una persona con grands valores nulos. Por ejemplo la persona al nacer no tiene edad de votar por lo tanto no va atener escual de voto y ese tipo de datos, lo mimso en realicion a los hijos

b)
En base a lo que se propone sabemos que no puedo llegar por medio de una dependencia a {nombre,DNI,Direccion,NombreHijo,EscuelaDondeVota,LocalidadEscuela}. Po lo tanto la calve dberia contener eso. veamos la clausura:

- DNI y NombreHijo llego a EdadHijo
- EcualdadDondeVota por si sola no llego a la informacion de escuela, me falta algot

Agrego {localidad} a la clabve

- DNI y HombreHijo -> EdadHijo
- EscuelaDondeVota y Localidad -> DireccionEscuela,CodigoPostalEscuela
- Localidad -> CodigoPostal

Podria tener dos posibles claves:
- {nombre,DNI,Direccion,NombreHijo,EscuelaDondeVota,LocalidadEscuela, localidad}
- {nombre,DNI,Direccion,NombreHijo,EscuelaDondeVota,LocalidadEscuela, copdigoPostal}. Po mediode codigoPostal puedo llegar a localidad y luego derivar toda la relacion.

Preguntar: DNI -> Nombre; Direccion por mas que no lo diga el enunciado?

c)
Preguntar?

## 2.8
a)
F = {AC -> E, E -> U}
No se puede aplicar nada mas, por lo que este tambien sera la cobertura minimal.

b)
Pensemos en la clave. {AC} es la unica, tal que a E y U puedo llegarb por medio de dependecias. Luego toda superclave tiene que tener mas atribtuos que 2. Y a us vez toda candidata debe ser de 2 atributos.

2FN: Cumnple. E depende deirectmane de {A,C}. Luego pued hacer depende a E->U  apartir de AC->E. 
Con la otra defincion podemos evr que A->E y C->E por lo que no depende parcialmente de la clave. Luego U como no depende de la calve, y depende de E pero ya vimos que E no depende parcialemnte, entonces vale. 

3FN:La primer condicion no la cumple tal que E no es superclave de la relacion. La segunda tampoco la cumple dado que E y U no son primos

FNBC: Tampoco la cumple. 

c) 
Es binaria la descomposicion, por lo tanto no tengo que hacer tableu para determinar en que forma esta. 

La intersecciond de ambos esquemas nos da: vacio. Luego esto no define ninguna superclave para ningun esquema, por lo tanto no sera SPI.

## 2.9
{E -> Ce, T Di -> A, T A -> Di D CA E}
- E -> Ce sale por la ultima oracion
- T A -> Di sabemos que un diretor solo hace un titulo, poer un titulo lo pueden hacer varios directores. Pero un titulo no se puede realizar un  imso año, por lo tanto Año y Titulo determina al director. A us vez detmeirna el rsto de la informacion de la pelicula
-  A su vez con la mimsa idea que antes, como un titulo solo se hace unabvez por año, y un director solo haec un titulo luego el director mas el itutlo detemrina el año. 

## 2.14
Valen:
- B,D 
Las que no valem:
- A no vale, porque es al reves, cada plato es exlusivo de un cocinero, no se define nada sobre la relacion contraria
- C no vale, dado que puede haber mas de un plato generado por ese cocinero en esa fecha y evento
- E, Evento y fecha no determina plato por que puede haber mas de un plato en ese evento en esa fecha

## 2.15
- AE vale:
    - AE : {AE}
    - A -> B : {AEB}
    - E -> C : {AEBC}
    - B -> D : {AEBCD}
- Es una Clave candidata
- AC vale:
    - AC : {AC}
    - A -> B : {ABC}
    - B -> D : {ABCD}
    - CD -> E : {ABCDE}
- Es clave candididata
- ABD y ACD ya no seran minimales, mas alla de que determine todas la relacion. Luego la unica opcion correcta sera B)

## 2.16
a) F, esta mal la defincion, si fuera FNBC todo atributo de la izquierda es parte de una superclave

b) es falsa por c y d

c) F, no esta en 3FN, estan mal ambas condicones. Pirmero lo de la izquierad ano es uperclvae, deberia tener carinalidad mayor a 2. Y luego lo de la derecha no es primo, porque esta B en el caso de la primera dependencia funcional.

d) V
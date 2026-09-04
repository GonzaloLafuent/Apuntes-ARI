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

b)  
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

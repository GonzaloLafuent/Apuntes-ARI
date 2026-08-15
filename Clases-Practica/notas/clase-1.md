# CLASE-1
## NOTAS
Clave campus: BD2C2026#

### ANTES DEL MODELO ENTIDAD RELACION
La idea es ubicar como este modelo se ubica dentro de la arquitectura de un software. El modelo que mas se usa para dibujar arquitecturas sera el C4. 

Dos formas de ver la rqui de software, como sustantivo es como se descompone en bloques. Como verbo es el proceso de traducir lo requerimientos de la arquitectura en una vision tecnica, tomamos los requisitios y lo convertimos en un sistema. 

dentro de este concepto tenemos dos divisiones, arquiectura de aplicaicon y arquietctura de sistema. Hay un concpeto de que la arquietctura sale del software pero eso no pasa, solo evoluciona del codigo.

Hay un concepto de arquitectura vs diseño, no todo diseño es arquitectura, pero si todo arquiectura es diseño. En el la arquiecttura tambien entran las decisiones de diseño significaatvias. Losignificativo es lo que impacta en la estrctura general, lo que cuesta mas. De esta forma la queictyura son dicesiones de diseño.

Esto lo que busca es apuntar a la importancia del diseño. El sistema es fragil si se contruye pirmero sin pensar en la misma. No se necesita un diseño genial al principio, per sis se necesita algo. El problema es como comunicar la arquietctura. hya veces que se mezclan cosas y el diseño se vuelve ambiguo. Hay que tener en cuenta que hay que tomar deciisones pero siempre teneindo en cuenta el estadio en el que estamos.

Para podes docuenetar la arquitectura de forma correcta usamos el moldeo C4, que se basa en niveles. Posee 4 niveles, contexto, contenedores, componentes y codigo: 
- Primero el diagrama de contexto, como interactura el sistema con oerosnas u tros sitemas
- dsp los contendedores, que son las aplicaicones sobre las que se hace un deploy individual,
- Componentes, son los modulos interneos de cada contenedor o aplicacion
- y por ultimo tenemos el codigo en si
Ess un enfoque top down, voy descomponiendo para luego unir la piezas. 

El modelo de entidad realiacion? entre en la parte contenedores y componentes. Ya con los contenedores puede empezar, pero en si en los componentes es donde se hace. Si tengo un contenedor que es una base de datos, lo que tenego para describirlo es MER

Por ultimo viene el modelo relacional, que esta integrado sobre el codigo. Del MER paso al modelo relacional. El MER modela el dominio, el relacional es mas fisico. 

El hecho de modelar permite evitar reescribir codigo, deetctar ambiguedades del negocio y genera un lenguaje comun del negocio. 

algunos de los problemas de microservicios es como mantener por ejemplo la intgridad entre los distints modelos de bases se se comunican etnre ellos. 

Este idea tambien ayuda a la cosntruccion con LLM, el hecho de poder tener un diseño de arquitectura slida, me permite que lo que me de la IA sea mas exacto con respecto a lo que le propongo. 

### MODELO RELACIONAL

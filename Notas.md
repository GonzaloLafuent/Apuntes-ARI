# NOTAS
## CLASE 3
A difrenecnia de antes donde se partia de un un universo con todos los aitrbutos, nosotros partimos de avrias relaciones. A partir de este se busca generar un modelo que sea fuerte. 
Se deben cumplir una serire de restricciones para dar un buen modelo de base. 

### PROBLEMAS DE DISEÑO
Tuplas espureas, es perdida de informacion a partr de laagregacion de tuplas. 

## ANOMALIAS
Normalizacion, proceso para ir generando un esuqme ade bases cada vez mas bueno, por medio de la reduccion o separacion en varias relaciones. 

## DEFINCIONES
La intension es el esquema, la extension es simplemnet cuando tengo los datos sobre el esquema, por eso las tuplas. En este caso el orden no importa, intentamos seguir el mimso de la relacion

X determina funcionalmente a Y, si para toda instnacia de la relacion R, para toda tupla de R, si la tuplia 1 tien el mismo valor de X para la tupla 2, entonces ambas tuplas tambien van a conisdir en el valor de Y. Si tengo un cojunto de depdenicas funcionales sobre unn esquema, si una instancia, un conjunto de tuplas cumplen todas las depdencias funcionale entonces esa extnesion o cojunto de tuplas es legal. Las dependencias funcionales definen reglas de negocios. 

Que se cumpla en una instancia o extension, no implica que se cumpla en todo el esquema. No se puede reducir de los datos esto. se debe comprobar con la logica. Se cunple o no se cumple, no hay punto medio. 

Si toda instancia staisfcae de R verifica un cojunt de depdenicas, entonces R satisface al conjunto. De ser asi, esto determina que instancias son validas. 

XW, son todos los X y todos los W. se unen todos los atributos. 

## APLICANDO AXIOMAS
Podemos decir que nombre  catgeoria determinan precio. podemo decir que coloor y departamento determinan precio, etc.

## INFERENCIA
f es una depdendecia funcional. Define que si toda toda instancia que staisface al cojnutno de dependecias F, tmb vale la depdencia f. que en si es a aprtir del conjunto aplicar los axiomas para llegar a f

## CLAUSURA
Son tas las Depdendecia funcionlaes que se puede inferir de un cojunto de depdencias funcionales, a partir de la aplicacion de axiomas. 

Para atributos, se contruye respecto a un conjunto F de depdencias funcionales. Son todos los atributos que uno podria alcanzar a partir de las reglas de amstrong a partir de un cojunto de depencias y aplicnado las mismas. Son todos los aitrbutos determinado por X, a apartir de la aplicacion del conjunto F.

## CLAVES
X es superclave, si este conjunta detemrina todos los atribtuos de la relacin. R siempre es supervale, tal que determina todos sus atribtuos. 

Clave sera una suerpclave, pero minimal, sera el menor conjunto que me termine todos los atributos. 

La clasura de un aitrbuto X es igual a R,entonces X es supercalve. 

## como calcular
arranco con un conjunto de atribtuos. Voy uiendo atribtuos que tengo una dpendicas funcional con el lado ziquiero pertenciendo a X sub i el lado derehco es un A que pertenece a Z, es decir que depende funcionalmene de Y. 

A la hora de ver esto, si calcaulo por ejemplo las acaurar por atributo, si tomo una que conetaga ese aitrbuto, la caulrra de de esitrbuto minimo, tmb va a estar dentro de la clauria de ese atributo mas otro. 

Por que no puede haber dos valores iguales referenciados por una clave? No, solo podria tenerla si tuvieran el mimso valor en todos loa itrbutos, pero esto no pasa, porque es un conjunto. Se puede tener filas reptiras si no lo marco como unique en sql. 

## COBERTURA MINIMAL
puede haber muchos. Conjunto de depdencias exquivalente a F, pero ademas que cuple esas tres condiciones. Todo lado derecho posee un unico atributo (Esto se hace descomponiendo la misma). No tiene atributo redunctaes, si B y c Determinan A y saco A B y me quedo con C y llego a A, luego B es redundante. Lo mimso para las depdencias reducnes, se elimina directanete aplicando trsitividad. 

## DESCOMPOSICION
Es tomar un esquema de R, y reemplazarlo por varios subesquemas de la relacion. 

No toda descomposion es buena, yo puedo perde algunas propiedades sobre la msima. A veces al descomponer si quier volver a obtener la ifnomacion orignal por medio de un join esto genera perdida de informacion. 

## SPI
Esto expresa la idea de ue algunas desocmpoiesioes puede general la perdida de informacion.

La idea de una SPI es que es una deposmcion de la relcion que para toda instancia de la misma, la junta de las proyeccion en las que la dvide a R, me debe dar de nuevo r.

## PERDIDA DE DF
Si tomo todas las desocmpision, hago las proyeccions funcionale ssobre cada una, y las uno luego obyengo F. Luego a esa union le qclaulo lac clausuar. Si me dal misma que la calsura de F, luego puedo decir que hya preservacion. 

## FORMAS NORMALES
Permite diseñar buenas modelos de bases. 

SGUNDA FORMANORMMAL: si todo airbuto no primo, no es parcialemnte dependiente de alguna clave de R. para esto tengo que saber todas las claves. 

TERCERA FORMA NORMAL: se deben cumplir dos coass para toda depdnecia funcionla no trvial. X es superclave de R  o A es primo, dado que A depdne funcionla de X. 

FNBC: aca no importa que sea primo, sea o no sea primo igual lo sacamos. es lo mimso que arriab pero si la condicion de primoer. 

## PROPIEDADES
la validez debe verificar sobre la clusar de las dependicas funcionales. 

## PARA FNBC
se suele aplicar desocmposion binaria para genera esta forma normal. Busco la depdencia funcionla que viola esta fomra normal. Luego divido la relacion de a dos en base a esta forma normal. Esto a su vez grantinza que no haya perdida de ifnormacion 

## AlGORITMOS
la de 3f normla esta sencillo, solo hay que obtener bien la cobertura minimla, dsp el resto sale 

# SEGUNDA PARTE
Algoritmo que me garaninza que una descomposicion es SPI o no? pra esto sirve el algoritmo de tableu.

La idea es apartir de la dpdencia funcionales,si tengo una dpedncid A dos determina A 3 me fijo si en la part d la X, de la partqi de la quida tengo el mimso vlor, y si tengo el mismo modifoc el valor en la parte de Y. 
Si piso uno sobre el otro, el que gna es el distinguido. 

Los distinguido solo los identifocs con numero de fila, los otros los indeitico con numero de coli,na y fila. 

Se reivsa las filas a pares, pero si no engo aitrbutos en esas de la depdmecia que agrre, no las tomo. 

cda vez que realiza un cambio peudo volver a recorrer todas las depedneicas funcionales. 

notar que las descomposiviones normales ya nos garniza spi o esas cosas. es mejor capaz pensarlo con eso, porque los algoritmo son mas sencillos. 


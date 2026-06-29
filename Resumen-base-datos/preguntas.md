### Preguntas:

# Seguridad
		Cuando el recovery manager recibe un commit guarda el log de inmediato para poder mandar la confirmación al cliente.

		no, la bdd te hace esperar 1 ciclo de disco o hasta q se llene el log, entonces graba el log en cada ciclo de disco como mucho. Para dar la confirmación si tengo que guardar el log pero no lo guardamos inmediatamente. Lo que importa es las transacciones que efectivamente logro hacer para considerar que tengo disco a velocidad de la ram, hacer mil op (de mil clientes) en paralelo terminamos haciendo esas mil en el tiempo que mil op de ram hubiesen hecho.

		workflow: parte del back q pasa info de lo que pide el usr y lo que hay que operar/calcular.

# Usabilidad y UX:
	1) "Son compatibles hacer un sist foolproof con las idea de nielsen?" Puse sí. 

	Rta: No pq una de las heurísticas dice que tenemos que diseñar tanto para usrs avanzados y nuevos.

	7) Un sistema que al vencerse la sesión mande al usuario a la pantalla de login ¿cumple los principios de usabilidad?

	Puse si.

	rta: Depende, porque si te kickea pero no guarda el progreso es muy frustrante. Así como está incompleto.

	9) En una aplicación web, para ser compatible con los principios de usabilidad de NyN ¿qué comportamiento debería tener la flecha atrás del navegador?

	Puse: volver a la pantalla anterior del sist y volver a la página anterior a abrir la app

	rta: solo pantalla anterior por ESTANDAR. Tiene q ser significativamente anterior la pantalla anterior. Ojo con hacer las url el estado del sistema y que los cambios se mantengan. Recomendación de libro "Dive into html5" interesante si te interesa Front End.


# Query Compiler
	Pasos grales para procesar una query

	1) Parsear la query: lo transforma en un tree que representa la estructura de la query de forma útil
	2) El tree parseado lo transforma a un tree de alg. relacional (el logical query plan)
	3) El plan se transforma a un physical query plan, q dice qué ops hacer, en qué orden, con qué algo va cada paso y cómo guardar y sacar datos de una op a otra.

	viene query -> parser -> arbol sintáctico -> verificamos tipos (check de campos, tablas y tipos dentro de la query)-> AST(arbol) verficado ->optimizador -> Arbol optimizado-> -> elección de algoritmos -> plan de ejec
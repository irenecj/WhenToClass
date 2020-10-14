# WhenToClass :books:

![logo](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/logo.jpg)


## :notebook: ¿Qué problema se pretende resolver?
Con este proyecto se pretende dar solución a un problema al que nos enfrentamos en la actualidad los estudiantes de Ingeniería Informática, este problema consiste en saber qué días debemos ir a clases y a qué horas a cada una de las asignaturas debido a la semipresencialidad con la que nos encontramos debido a la situación actual.
Así se pretende crear un microservicio REST que permita responder a las siguientes preguntas muy frecuentes entre los estudiantes hoy en día sobre cada asignatura:
- ¿Qué horario tiene la asignatura "X"?
- ¿Qué días tengo que ir si soy del turno de presencialidad "Y" de la asignatura "X"?

### Motivación
Como ya se ha comentado anteriormente, en la actualidad los estudiantes de Informática nos encontramos con constantes dudas relacionadas con qué días debemos acudir a una determinada asignatura debido a la semipresencialidad que nos encontramos debido a la situación presente. Debido a esto se pretende elaborar un microservicio REST que permita a los usuarios consultar el horario de ciertas asignaturas tanto de teoría como de prácticas, así como saber que días les corresponde ir pudiendo consultar la lista de días asignados en función del turno de presencialidad al que pertenecen.

## :wrench: Herramientas
- **Lenguaje de programación:** Se utilizará Ruby como lenguaje de programación.
- **Base de datos:** La aplicación obtendrá la información de un fichero en formato JSON.
- **Sistema de logs:** Para registrar los eventos que ocurren para posteriormente analizarlos en busca de problemas tanto del servicio en sí como de prestaciones y otros muchos más aspectos.

Herramientas específicas de Ruby:
- **Gestor de versiones:** Se utiliza RBENV como gestor de versiones, se puede consultar más información [aquí](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/Herramientas/rbenv.md) en la documentación del proyecto.
- **Herramienta de pruebas:** Se utiliza minitest como herramienta de pruebas, se puede consultar más información [aquí](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/Herramientas/minitest.md) en la documentación del proyecto.
- **Herramienta de gestión de dependencias:** Se utiliza Bundler como herramienta de gestión de dependencias, se puede consultar más información [aquí](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/Herramientas/bundler.md) en la documentación del proyecto.
- **Framework para aplicaciones web:** Se utilizará debido a la baja complejidad del proyecto un framework sencillo, como por ejemplo es el caso de Sinatra.

## Clase asignatura
La clase asignatura representa una asignatura como una cualquiera que podemos tener en nuestra carrera, podremos obtener información de cada asignatura en cuanto a cuestiones temporales se refiere como por ejemplo saber si tenemos que ir esta semana, poder obtener el horario de prácticas de nuestro grupo y de teoría de forma ordenada temporalmente o saber que días de un determinado mes tengo que ir a clase si soy por ejemplo del grupo de presencialidad 1. Se puede consultar la implementación de la clase [aquí](https://github.com/antoniocuadros/WhenToClass/blob/master/lib/asignatura.rb) así como un struct utilizado [aquí](https://github.com/antoniocuadros/WhenToClass/blob/master/lib/horarioasignatura.rb).

Se pueden consultar más detalles de la clase [aquí](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/Clases/asignatura.md).

### Testear la clase asignatura
Como ya se ha mencionado anteriormente, se ha utilizado rake para automatizar este tipo de tareas, por ello, para testear la clase asignatura tendremos que hacer:

`rake test`

Para poder ejecutar ésto es necesario tener instalado rake (`gem install rake`).

### Instalar las dependencias
Para poder instalar las dependencias será necesario ejecutar:

`rake test`

Ésto instalará las dependencias de nuestro proyecto, dichas dependencias se encuentran especificadas en el [Gemfile](https://github.com/antoniocuadros/WhenToClass/blob/master/Gemfile) y [Gemfile.lock](https://github.com/antoniocuadros/WhenToClass/blob/master/Gemfile.lock). 
- **Gemfile:** es un fichero donde especificamos que gemas queremos usar. 
- **Gemfile.lock:** es un fichero donde Bundler graba las versiones exactas que tenemos instaladas de nuestras gemas y que será utilizado cuando se haga bundle install en la tarea rake test para instalar las dependencias junto al fichero Gemfile para saber de donde obtener las gemas.

## :hammer: Documentación

### Herramientas
[En este enlace](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/Herramientas/herramientas.md) se pueden consultar todas las herramientas utilizadas tanto generales como específicas de Ruby.

### Historias de Usuario
[En este enlace](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/HistoriasUsuario/HistoriasUsuario.md) puede consultarse las diversas historias de usuarios que hay activas en cada momento.

### Pasos en la realización del proyecto
[En este enlace](https://github.com/antoniocuadros/WhenToClass/blob/master/docs/PasosProyecto/Pasos.md) puede consultarse documentación adicional acerca de los pasos que se llevarán acabo para completar el proyecto.



### Fichero iv.yaml
[En este enlace](https://github.com/antoniocuadros/WhenToClass/blob/master/iv.yaml) se puede consultar el fichero iv.yaml.

### Configuración Inicial

[En este enlace](https://github.com/antoniocuadros/ejercicios-apuntes-IV/blob/master/Configuraci%C3%B3n%20gitHub/ConfiguracionGit.md) se puede comprobar la configuración de GitHub.

### Autor
[Antonio Cuadros Lapresta](https://github.com/antoniocuadros)

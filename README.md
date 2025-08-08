# Auth0: Implementación de soluciones de autenticación moderna

Este es el repositorio del curso de LinkedIn Learning `Auth0: Implementación de soluciones de autenticación moderna`. El curso completo está disponible en [LinkedIn Learning][lil-course-url].

![Nombre completo del curso][lil-thumbnail-url] 

DESCRIPCIÓN DEL CURSO

## Instrucciones

Este repositorio tiene ramas (branches) para cada uno de los vídeos del curso. Puedes usar el menú emergente de la rama en GitHub para cambiar a una rama específica y echar un vistazo al curso en esa etapa, o puedes añadir `/tree/nombre_de_la_rama` a la URL para ir a la rama a la que quieres acceder.

## Ramas

Las ramas están estructuradas para corresponder a los vídeos del curso. La convención de nomenclatura es Capítulo#_Vídeo#. Por ejemplo, la rama denominada `02_03` corresponde al segundo capítulo y al tercer vídeo de ese capítulo. Algunas ramas tendrán un estado inicial y otro final. Están marcadas con las letras i («inicio») y f («fin»). La branch i tiene el mismo código que al principio del vídeo. La branch f tiene el mismo código que al final del vídeo. La rama master tiene el estado final del código que aparece en el curso.

## Instalación

1. Para utilizar estos archivos de ejercicios, debes tener descargado lo siguiente:
   - Ruby v3+
   - Ruby on Rails v8

2. Clona este repositorio en tu máquina local usando la Terminal (macOS) o CMD (Windows), o una herramienta GUI como SourceTree.
3. Instala las dependencias del proyecto ejecutando `bundle install` en la raíz del repositorio.

4. Configura Auth0:
   - Crea una cuenta en [Auth0](https://auth0.com/).
   - Genera una nueva aplicación y copia el `Domain`, `Client ID` y `Client Secret`.
   - Crea un archivo `.env` en la raíz del proyecto y agrega las siguientes variables: 
     ```
     AUTH0_DOMAIN=tu-dominio.auth0.com
     AUTH0_CLIENT_ID=tu-client-id
     AUTH0_CLIENT_SECRET=tu-client-secret
     ```
   - Guarda los cambios.

5. Inicia el servidor local con:
   ```
   rails server
   ```
   El proyecto estará disponible en `http://localhost:3000`.

6. Accede a la aplicación y prueba el flujo de autenticación con Auth0.

### Docente

**Carla Urrea Stabile**

Echa un vistazo a mis otros cursos en [LinkedIn Learning](https://www.linkedin.com/learning/instructors/carla-urrea-stabile).

[0]: # (Replace these placeholder URLs with actual course URLs)
[lil-course-url]: https://www.linkedin.com
[lil-thumbnail-url]: https://media.licdn.com/dms/image/v2/D4E0DAQG0eDHsyOSqTA/learning-public-crop_675_1200/B4EZVdqqdwHUAY-/0/1741033220778?e=2147483647&v=beta&t=FxUDo6FA8W8CiFROwqfZKL_mzQhYx9loYLfjN-LNjgA

[1]: # (End of ES-Instruction ###############################################################################################)

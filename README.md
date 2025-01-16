Pruebas de API

Este proyecto contiene las pruebas de API basadas en los requerimientos proporcionados. Las pruebas han sido implementadas utilizando Karate Framework y están configuradas para ejecutarse mediante Maven. Además, se incluye una colección de Postman que realiza las mismas pruebas de forma manual para facilitar su validación.

Descripción de las Pruebas

Prueba 1: Listar usuarios

Objetivo: Verificar que se puedan obtener todos los usuarios existentes.
Método: GET
Endpoint: https://gorest.co.in/public/v2/users

Validaciones:
- El código de estado debe ser 200.
- La respuesta debe contener una lista de usuarios con atributos como id, name, email, gender, y status.

Prueba 2: Crear usuario

Objetivo: Verificar que se pueda crear un usuario correctamente.
Método: POST
Endpoint: https://gorest.co.in/public/v2/users

Payload:

{
  "name": "Tenali Ramakrishna",
  "gender": "male",
  "email": "tenali.ramakrishna@example.com",
  "status": "active"
}

Validaciones:
- El código de estado debe ser 201.
- La respuesta debe contener los datos del usuario creado, incluyendo un id generado.

Prueba 3: Actualizar usuario

Objetivo: Verificar que se pueda actualizar la información de un usuario existente.
Método: PATCH
Endpoint: https://gorest.co.in/public/v2/users/{USER_ID}

Payload:

{
  "name": "Allasani Peddana",
  "email": "allasani.peddana@example.com",
  "status": "active"
}

Validaciones:
- El código de estado debe ser 200.
- La respuesta debe reflejar los cambios realizados.

Prueba 4: Eliminar usuario

Objetivo: Verificar que se pueda eliminar un usuario existente.
Método: DELETE
Endpoint: https://gorest.co.in/public/v2/users/{USER_ID}

Validaciones:
- El código de estado debe ser 204.

Ejecucion
Requisitos:
- Java8 o sperior
- Maven
- Visual Studio Code con las extensiones de Karate Runner y Cucumber.

Pruebas
Comandos: mvn clean test


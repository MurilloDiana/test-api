Feature: Listar Usuarios API

  Scenario: Listar todos los usuarios
    Colocar url 'https://gorest.co.in/public/v2/users'
    Y header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'
    Cuando metodo GET
    Entonces status 200
    Y la respuesta de coincidencia contiene { id: '#number', name: '#string' }

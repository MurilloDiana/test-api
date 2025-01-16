Feature: Update User API

  Scenario: Actualizar un usuario de manera exitosa 
    Colocar url 'https://gorest.co.in/public/v2/users/USER_ID'
    Y header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'
    Y header Content-Type = 'application/json'
    Y request { "name": "Allasani Peddana", "email": "allasani.peddana@example.com", "status": "active" }
    Cuando method PATCH
    Entonces status 200
    Y la respuesta conincida { id: '#number', name: 'Allasani Peddana', email: 'allasani.peddana@example.com', status: 'active' }

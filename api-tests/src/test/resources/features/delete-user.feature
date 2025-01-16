Feature: Delete User API

  Scenario: Eliminar usuario existente de manera exitosa  
    Colocar url 'https://gorest.co.in/public/v2/users/USER_ID'
    Y header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'
    Cuando method DELETE
    Entonces status 204
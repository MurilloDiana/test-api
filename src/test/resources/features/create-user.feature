Feature: Create User API

  Scenario: Crear un nuevo usuario exitosamente
    Colocar url 'https://gorest.co.in/public/v2/users'
    y header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'
    y header Content-Type = 'application/json'
    And request { "name": "Tenali Ramakrishna", "gender": "male", "email": "tenali.ramakrishna@example.com", "status": "active" }
    Cuando method POST
    Entonces status 201
    Y la respuesta de coincidencia contiene { id: '#number', name: 'Tenali Ramakrishna', gender: 'male', email: 'tenali.ramakrishna@example.com', status: 'active' }

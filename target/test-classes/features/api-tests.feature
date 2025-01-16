Feature: API Tests for GoRest

Background:
  * url 'https://gorest.co.in/public/v2'
  * def token = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'

Scenario: List users
  Given path 'users'
  And header Authorization = token
  When method get
  Then status 200
  And match response == '#[]'

Scenario: Create user
  Given path 'users'
  And header Authorization = token
  And request { "name": "Tenali Ramakrishna", "gender": "male", "email": "tenali.ramakrishna@15ce.com", "status": "active" }
  When method post
  Then status 201
  And match response.name == 'Tenali Ramakrishna'

Scenario: Update user
  Given path 'users/6940344'
  And header Authorization = token
  And request { "name": "Allasani Peddana", "email": "allasani.peddana@15ce.com", "status": "active" }
  When method patch
  Then status 200
  And match response.name == 'Allasani Peddana'

Scenario: Delete user
  Given path 'users/6940344'
  And header Authorization = token
  When method delete
  Then status 204

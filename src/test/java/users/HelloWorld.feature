Feature: User Management API test

Background:
* url baseUrl

Scenario: Create User

Given path '/api/users'
And request {name:'Sena', job:'Engineer'}
When method POST
Then status 201
And match response == {name:'Sena', job:'Engineer', id:'#notnull', createdAt:'#notnull'}


Scenario: Get User

Given path '/api/users'
And param id = '1'
When method GET
Then status 200
And match response.data contains {first_name:'George', last_name:'Bluth'}

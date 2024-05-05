Feature: test post menthods

  Background: url
     url:'https://reqres.in/api'


  Scenario: request post methods
    Given url  'https://reqres.in/api/users'
    And request    { "name" : "mahesh", "God" :"omshiva","gender" : "male" ,"status" : "active" }
    When method POST
    Then status 201
    And print response
    And match response.name == "mahesh"
    And match response.gender == "male"
    And match response.God == "omshiva"

  @tag1
  Scenario: DEMO 2
    Given url  'https://reqres.in/api/users'
    And request { "name": "morpheus","job": "leader" }
    When method POST
    Then status 201
    And print response
    And match response == { "name": "morpheus","job": "leader","id": "#string","createdAt": "#ignore"}

  Scenario: DEMO 3
    Given url  'https://reqres.in/api/users'
    And def  body = read("file.json")
    And request body
    When method POST
    Then status 201
    And print response
    And match response.name == "morpheus"

  Scenario: DEMO 4
    * def rew=read('Mah.json')
    Given url  'https://reqres.in/api/users'
    And request { "name": "morpheus","job": "leader" }
    When method POST
    Then status 201
    And print response
    And match response == rew
    And match response.name == "morpheus"

  Scenario: DEMO 5
    Given url  'https://reqres.in/api/users'
    And def  body = read("file.json")
    And set body.name = "Mahesh"
    And request body
    When method POST
    Then status 201
    And set body.name = "Mahesh"
    And print response
    And match response.name == "Mahesh"

Feature: Config demo

  Scenario: request post methods
    Given url ish
    And request    { "name" : "mahesh", "God" :"omshiva","gender" : "male" ,"status" : "active" }
    When method POST
    Then status 201
    And print response
    And match response.name == "mahesh"
    And match response.gender == "male"
    And match response.God == "omshiva"
    And print name

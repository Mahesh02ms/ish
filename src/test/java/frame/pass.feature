Feature: test post menthods

  Scenario: request post methods
    Given url  'https://reqres.in/api/users/2'
    And request {   "name": "MAHESH","job": "sF "}
    When method post
    Then status 201
    And print response
    And match response.name == 'MAHESH'
    And match response == 'request'

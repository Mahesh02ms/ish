Feature: Test schema validations

  Scenario: Tested all the vaildations
    Given url 'https://reqres.in/api/users'
    And request { "name": "morpheus", "job": "leader"}
    When method Post
    Then status 201
    And print response
   
Feature: Test the data point

  Scenario: test multiple files2
    Given url 'https://reqres.in/api/users/3'
    When method GET
    Then status 200
    And print response
    And match response == love[0]

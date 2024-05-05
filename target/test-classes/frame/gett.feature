Feature: Sample API Tests

  Scenario: Test a sample Get API
    Given url  'https://gorest.co.in/public/v2/users'
    And path '5899636'
    When method GET
    Then status 200
    * print  response
    * def mahesh = response
    * print mahesh
    * def isha = mahesh.name
    * print isha
    * match isha == 'Gov. Agrata Shah'

  Scenario: Test a sample Get API
    Given url  'https://gorest.co.in/public/v2/users'
    And path '5'
    When method GET
    Then status 404
    And print  response

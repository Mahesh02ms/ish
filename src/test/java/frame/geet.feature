Feature: Sample API Tests

  Background: base url
    Given url  'https://reqres.in'
    And header Accpet = 'application/json'

  Scenario: Test a sample Get API
    # Given url  'https://reqres.in'
    Given path '/api/unknown'
    When method GET
    Then status 200
    And print  response

  Scenario: sample get api
    Given url  'https://reqres.in/api/users/2'
    And header Accpet = 'application/json'
    When method GET
    Then status 200
    And print  response
    And match response.[0].first_name == '#string'
    And match response.[0].id == '#present'

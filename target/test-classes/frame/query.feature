Feature: Get API with query

  Background: define url
    Given url  ish

  Scenario: Get the active data
    Given params  {status:'active'}
    When method GET
    Then status 200
    * print  response

  Scenario: get the path
    Gvien path 'tags'

    When method GET
    Then status 200
    * print response
    And print name

Feature: To test Get Request

  Background: Given url
    Given url niha

  Scenario: Test a sample Get API
    Given path 'unknown'
    Given param id = 2
    When method GET
    Then status 200
    And print  response
    # And match response.data[0].name =='cerulean'
    And match response.data.color == '#C74375'

  @second
  Scenario: Test a sample get data
    Given path 'users'
    #Given param  id = 2
    When method GET
    Then status 200
    And print  response
    And match response.data[5].first_name =="Tracey"
    And print name

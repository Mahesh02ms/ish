Feature: TEST data files

  Background: 
    * def love = read('../data.json')
    * def  rika = call read('data2.feature')

  Scenario: test multiple files2
    Given url 'https://reqres.in/api/users/3'
    When method GET
    Then status 200
    And print response
    And match response == love[1]
    And print 'bro----',bro

Feature: test reading otherfiles

  Background: 
    Given url 'https://reqres.in/api/users'
    * def dataread = read('file.json')
    * def helo = Java.type('frame.Readdata')
    * set dataread.name = helo.mahes().name
    * set dataread.job = helo.mahes().job

  Scenario: test otherfiles
    And request  dataread
    When method Post
    Then status 201
    And print response
    And match response.name == dataread.name

  Scenario: test otherfiles
    And request  dataread
    When method Post
    Then status 201
    And print response
    And match response.job == dataread.job

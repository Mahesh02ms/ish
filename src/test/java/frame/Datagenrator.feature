Feature: TEST DATA GENRATOR

  Background: 
    Given def nana = Java.type('frame.TESTGENRATOR')

  Scenario: Test api data genrtor
    * def username = nana.random ();
    * def job = nana.deva ();
    And print job
    And print username
    Given url 'https://reqres.in/api/users'
    And request {"name": "# (username)","job":"# (job)"}
    When method Post
    Then status 201
    And print response
    * match response.name == "#string"
    * match response.job == "#string"

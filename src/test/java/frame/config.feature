Feature: Config

  Scenario: Test config
    Given url niha
    Given path 'users'
    And request { "name": "morpheus","job": "leader" }
    When method POST
    Then status 201
    * def result = call read('Post.feature@tag1')
    And print result
    And print name

Feature: test data driven testing

  Background: 
    Given url niha

  Scenario Outline: Test Driven test
    Given path 'users'
    And request {"name":<name>,"job":<salary>}
    When method Post
    Then status 201
    And print response
    * def result = response
    Given path 'users' +result.id
    When method GET
    Then status 200
    And print response

    Examples: 
      | name   |  | salary     |
      | mahesh |  | mahe       |
      | love   |  | baby       |
      | NISHA  |  | automation |

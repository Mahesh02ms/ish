Feature: tested hooks

  Background: 

* configure afterScenario = 
"""
function(){
  karate.log('after scenario:', karate.scenario.name);
}
"""
* configure afterFeature = 
"""
function(){
  karate.log('after Feature:', karate.Feature.name);
 }
 """

  Scenario: hookes testing
    Given url 'https://reqres.in/api/users'
    And request {"name" :"mahesh","job":"software"}
    When method Post
    Then status 201
    And print response

    
    Scenario: only one hookes
    Given url 'https://reqres.in/api/users'
    And request {"name" :"sairam","job":"software"}
    When method Post
    Then status 201
    And print response
    
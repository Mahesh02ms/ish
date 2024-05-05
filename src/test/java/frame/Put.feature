Feature: test put methods

  Scenario: Put Methods
    And def  ish = read('Mah.json')
    Given url 'https://reqres.in/api/users/2'
    And request ish
    When method PUT
    Then status 200
    And print response

Feature: Sample POST Request

  Background:
    * url 'https://jsonplaceholder.typicode.com/posts'

  Scenario: Create a new post
    Given request
    """
    {
      "title": "Karate Framework",
      "body": "Karate is a powerful API testing framework.",
      "userId": 1
    }
    """
    When method post
    Then status 201
    And match response.id == 101

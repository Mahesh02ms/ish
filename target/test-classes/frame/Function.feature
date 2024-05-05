Feature: Test the javascrpit functions

  Background: 
    * def posst =
      """
      {
          "name": "morpheus",
          "job": "leader"
      }

      """

  Scenario: Teste the users
    Given url 'https://reqres.in/api/users'
    And request posst
    When method Post
    Then status 201
    And print response
    * def data = response.data
    And print 'data----',data
    * def tests =
      """
      function (is){
      var text = "";
      Var Name = "AMAHESHHHS";
      
      for(var i=0; i<is; 	i++) {
      
      text += Name.charAt(Math.floor(Math.random().name.length()));
      return text;
      }
      }
      """
    * def username  = call tests data
    And print 'username------',username

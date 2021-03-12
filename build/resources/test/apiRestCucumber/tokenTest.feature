Feature: Token

  @Token
  Scenario: As admin user I want to get and delete the token
  So that i am able to answer the test exercise.

    #POST
    Given I have access to Todo.ly
    When I send a request GET to url https://todo.ly/api/authentication/token.json with json
    """
    """
    Then I expected response code 200
    And I get the property TokenString save on ID_TOKEN
    And I expected the response body
    """
    {"TokenString":ID_TOKEN,"UserEmail":"jorge99@jorge99.com","ExpirationTime":"IGNORE"}
    """

    #DELETE
    When I send a DELETE request with ID_TOKEN to http://todo.ly/api/authentication/token.json
    Then I expected response code 200
    And I expected the response body
    """
    {
    "TokenString": ID_TOKEN,
    "UserEmail": "jorge99@jorge99.com",
    "ExpirationTime": "IGNORE"
    }
    """
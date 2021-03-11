Feature: User

  @User
  Scenario: As admin user I want to create and update a user
  So that i am able to answer the test exercise.

    #POST
    Given I have access to Todo.ly
    When I send a request POST to url https://todo.ly/api/user.json with json
    """
    {
      "Email":"george@george.com",
      "FullName": "Jorge Lopez",
      "Password": "12345"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {"Id":677007,"Email":"jorge99@jorge99.com","Password":null,"FullName":"misss","TimeZone":0,"IsProUser":false,"DefaultProjectId":3897457,"AddItemMoreExpanded":false,"EditDueDateMoreExpanded":false,"ListSortType":0,"FirstDayOfWeek":0,"NewTaskDueDate":-1,"TimeZoneId":"Pacific Standard Time"}
    """

    #PUT
    When I send a request PUT to url https://todo.ly/api/user/0.json with json
    """
    {
      "FullName":"george"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    """

Feature: Navigate to menu with parameters

  Background:
    Given The user is on the login page
    When  The user logs in using "eurotech@gmail.com" and "Test12345!"
    Then The welcome message contains "Welcome Teacher"


  Scenario: User navigates to Developers Menu
#    Given The user is on the login page
#    When  The user logs in using "eurotech@gmail.com" and "Test12345!"
#    Then The welcome message contains "Welcome Teacher"
    And The user navigates to "All Posts" menu
    Then The should be able to see header as "Posts"


  Scenario: User navigates to My Account Menu
#    Given The user is on the login page
#    When  The user logs in using "eurotech@gmail.com" and "Test12345!"
#    Then The welcome message contains "Welcome Teacher"
    And The user navigates to "My Account" menu
    Then The should be able to see header as "Dashboard"

    # Create a Scenario Outline covering the above 2 scenarios

#Feature: Navigate to menu using Scenario Outline  ----> ask this shouldn`t we write this feature ??

  @smoke
  Scenario Outline:Login as different users using Scenario Outline
    And The user navigates to "<Menu>" menu
    Then The should be able to see header as "<Header>"

    Examples:
      | Menu       | Header    |
      | All Posts  | Post     |
      | My Account | Dashboard |

    # Homework:
    # Create a new feature file named "NegativeLoginTestScenarioOutline"
    # Use Scenario Outline to enter invalid username and/or password and validate the different error messages

  

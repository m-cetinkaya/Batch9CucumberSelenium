Feature: Navigate Menu
                #Scenario 1:
            #Login as Teacher
            #At first get the text of welcome
            #Then go to Developers menu and get the text of Developers

            #Scenario 2:
            #Login as Teacher
            #Get the text of welcome
            #Then go to All Posts menu and get the text of Posts


            #Scenario 3:
            #Login as Teacher
            #Get the text of welcome
            #Then go to My Account menu and get the text of Dashboard

            #Create new feature file which is navigateMenu
            #Write scenarios
            #Create step definitions NavigateMenuStepDefinitions
            #Implement step definitions by adding printLn
  Scenario: Navigate Developers Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user should be able to see welcome message
    And  The user navigates to Developer menu
    Then The user able to see developer title

@smoke
  Scenario: Navigate All Posts Menu
    Given The user is on the login page
    When  The user enters teacher credentials
    Then  The user should be able to see welcome message
    And   The user navigates to All Posts menu
    Then  The user able to see All Posts title

    @smoke
  Scenario: Navigate My Account Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user should be able to see welcome message
    And   The user navigates to My Account menu
    Then  The user able to see  Dashboard title
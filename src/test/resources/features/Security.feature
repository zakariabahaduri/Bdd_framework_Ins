@Smoke @Regression
Feature: Application Security Functions

  @US_3
  Scenario: Validate Login Section Title US_3
    Then Validate the header title is "TEK Insurance Portal"
    Then Validate login section title "Customer Service Portal"

  @US_4
  Scenario: Validate Login button disable and enabled US_4
    Then Validate login button is "disabled"
    When Enter username as "supervisor"
    When Enter password as "tek_supervisor"
    Then Validate login button is "enabled"

  @US_5
  Scenario: Validate login with valid username and password
    When Enter username as "supervisor"
    When Enter password as "tek_supervisor"
    When Click on login button
    Then Validate the header title is "Tek Insurance App"
    Then Validate logged in username is "Supervisor"

  @US_6
  Scenario Outline: Validate negative data to login
    When Enter username as "<username>"
    When Enter password as "<password>"
    When Click on login button
    Then Validate error message "<errorMessage>"

    Examples:
      | username      | password       | errorMessage         |
      | wrongUsername | tek_supervisor | User not found       |
      | supervisor    | wrong password | Password Not Matched |
      | MohammadCSR   | tek_supervisor | User not found       |
      | Ali           | tek_supervisor | User not found       |


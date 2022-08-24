Feature: login feature

  Background:
    Given user is navigated to the specified url

  @login
  Scenario: valid Admin login
    When  user enters a valid "Admin" and "Hum@nhrm123"
    And   user clicks on login
    Then  the user is able to see the message Welcome Admin

  @login
  Scenario Outline: Invalid Credentials
    When user enters different "<username>" and "<password>" and verify the "<error>"
    Examples:
      | username | password | error |
      |admin     |xyz       |Invalid credentials|
      |christiano|Hum@n     |Invalid credentials|
      |          |Hum@nhrm123|Username cannot be empty|
      |admin     |           |Password cannot be empty|
@rtcamp @login @functional

    Feature: rtCamp site, validating login functionality

  @rtcamplogin
  Scenario: Validate login activity of rtCamp site
    Given I open rtCamp site
    Then I click on activity button
    And I enter username and password
    And I click on log in button
    Then I see rtPanel banner
    And I see profile name and logout button

  @loginwrongpassword
  Scenario: Validate login activity of rtCamp site when password is incorrect
    And I enter incorrect password with correct username
    And I click on log in button
    Then I see error message related to incorrect password

  @loginwrongusername
  Scenario: Validate login activity of rtCamp site when username is incorrect
    And I enter incorrect username with correct password
    And I click on log in button
    Then  I see error message related to incorrect username








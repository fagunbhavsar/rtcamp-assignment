@rtcamp @login @functional

    Feature: rtCamp site and validating media related functionality

  @rtcamplogin
  Scenario: Validate login activity of rtCamp site
    Given I open rtCamp site
    Then I click on activity button
    And I enter username
    And I enter password
    And I click on log in button
    Then I see rtPanel banner
    And I see profile name and logout button

  @loginwrongpassword
  Scenario: Validate login activity of rtCamp site when password is incorrect
    Given I open rtCamp site
    Then I click on activity button
    And I enter username
    And I enter incorrect password
    And I click on log in button
    Then I see error message related to incorrect password

  @loginwrongusername
  Scenario: Validate login activity of rtCamp site when username is incorrect
    Given I open rtCamp site
    Then I click on activity button
    And I enter incorrect username
    And I enter password
    And I click on log in button
    Then  I see error message related to incorrect username

  @newmediaupload
  Scenario: Validate new media file upload functionality
    Given I open rtCamp site
    Then I click on activity button
    And I enter username
    And I enter password
    And I click on log in button
    Then I see Activity label with text field below it
    And I click on text field
    And I see button with attach media tool tip
    And I click on attach media button
    And I select a file from local system
    And I see uploaded image below text field
    And I select post privacy value as Private
    Then I click on Post Update
    And I see newly uploaded media post

  @newalbumupload
  Scenario: Validate album upload functionality
    Given I open rtCamp site
    Then I click on activity button
    And I enter username
    And I enter password
    And I click on log in button
    Then I click on profile name
    Then I click on media link
    Then I click on albums link
    Then I click on options button
    Then I click on add album link
    And I enter album title
    And I click on create album button
    Then I see album created successfully message
    And I close the create new album popup
    Then I see newly create album name against album label
    And I see privacy as Private
    Then I click on select your files
    And I select five media files
    And I click on start upload
    And I click on Albums link
    Then I see newly created album

   @likeunlikemedia
   Scenario: Validate like functionality for an uploaded media
     Given I open rtCamp site
     Then I click on activity button
     And I enter username
     And I enter password
     And I click on log in button
     Then I click on profile name
     Then I click on media link
     Then I click on albums link
     Then I click on newly created album
     Then I click on any one uploaded media file
     Then I click on like button
     And I see the like message
     Then I click on the same button again
     And I see the like button as it is

   @changecover
   Scenario: Validate change cover image functionality
     Given I open rtCamp site
     Then I click on activity button
     And I enter username
     And I enter password
     And I click on log in button
     Then I click on profile name
     Then I click on Change Cover Image
     Then I select a file from local system
     And I see newly uploaded cover image
     Then I click on profile name again






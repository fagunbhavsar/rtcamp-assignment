@rtcamp @media @functional

  Feature: rtCamp site, validating media related functionality (Upload media file, upload an album, like/unlike an uploaded media, change cover banner)

    Scenario: Validate new media file upload functionality
      Given I am logged into rtCamp site
      Then I see Activity label with text field below it
      And I click in text field
      And I see button with attach media tool tip
      And I click on attach media button
      And I select a file from local system
      And I see uploaded image below text field
      And I select post privacy value as Private
      Then I click on Post Update
      And I see newly uploaded media post

    Scenario: Validate album upload functionality
      Given I am logged into rtCamp site
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

    Scenario: Validate like functionality for an uploaded media




@droneapp @functional

  Feature: Drone delivery with a consignment of allowed weight

  @consignmentdelivery
  Scenario: Validate Drone delivery with a consignment of allowed weight
    Given I open drone delivery page
    Then  I select drone identifier
    And   I enter delivery address
    And   I click on delivery button


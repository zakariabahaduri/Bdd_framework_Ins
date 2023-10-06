@Smoke
Feature: Testing application title

  @US_1
  Scenario: page title should be Tek Insurance Service US_1
    Then Validate application title should be "Tek Insurance Service"

  @US_2
  Scenario: Validate first page header title US_2
    Then Validate the header title is "TEK Insurance Portal"
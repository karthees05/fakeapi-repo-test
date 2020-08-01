@fakeapi_feature
Feature: Validate the fake APIs

  Background:
    Given baseUri is http://fakerestapi.azurewebsites.net

  @fakeapi_scenario3
  Scenario: Validate DELETE Activities
    Given I set Accept header to application/json
    And I set Content-Type header to application/json
    When I DELETE /api/Authors/1
    Then response code should be 200
    And response header content-length should exist
    And response header Pragma should exist
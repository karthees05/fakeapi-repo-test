@fakeapi_feature
Feature: Validate the fake APIs

  Background:
    Given baseUri is http://fakerestapi.azurewebsites.net

  @fakeapi_scenario2
  Scenario: Validate POST Activities
    Given I set Accept header to application/json
    And I set Content-Type header to application/json
    And I set body to {"ID": 111111, "IDBook": "Book111111", "FirstName": "dummies", "LastName": "dumslastname"}
    When I POST /api/Authors/111111
    Then response code should be 200
    And response header Content-Type should exist
    And response body should be valid json
    And response body path $.ID should exists
    And response body path $.IDBook should exists
    And response body path $.FirstName should exists
    And response body path $.LastName should exists


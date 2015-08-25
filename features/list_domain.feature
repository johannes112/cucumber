@api
Feature: List domains
  As an API client
  In order to do things with domains
  I want to retrieve a list of domains

  Scenario: retreive all domains as XML
    Given I am a valid API user
    And I send and accept XML
    When I send a GET request for "/domains"
    Then the response should be "200"
    And the XML response should be a "domains" array with 1 "domain" elements

  Scenario: retreive all domains as JSON
    Given I am a valid API user
    And I send and accept JSON
    When I send a GET request for "/domains"
    Then the response should be "200"
    And the JSON response should be an array with 1 "domain" elements
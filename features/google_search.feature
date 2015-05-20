Feature: Google Search
  @javascript
  Scenario: Search for Johannes
    Given I am on the Google homepage
    When I search for "Johannes Launer"
    Then I click the button for search
    Then I should see "Student"


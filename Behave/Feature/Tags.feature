Feature: Search with keyword

  @Sanity
  Scenario: Sanity search
    Given When I launch the browser and navigated to Google Homepage
    When I entered sanity keyword
    Then I should see results related to sanity
    And I close the browser

  @Smoke
  Scenario: Searching with multiple keywords in browser
    Given When I launch the browser and navigated to Google Homepage
    When I entered smoke keyword
    Then I should see results related to smoke
    And I close the browser


  @Regression
  Scenario: Searching with multiple keywords in browser
    Given When I launch the browser and navigated to Google Homepage
    When I entered regression keyword
    Then I should see results related to regression
    And I close the browser


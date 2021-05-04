Feature: Searching in google with multiple keywords

  Background:
    Given Launch the browser
    And head to Google search page


  Scenario: Searching with python
    When Search with "python" on web
    Then Should get to see results related to 'python'
    Then Close the browser

  Scenario: Searching with python3

    When Search with 'python3' on web
    Then Should get to see results related to 'python3'
    Then Close the browser


  Scenario: Searching with python2

    When Search with python2 on web
    Then Should get to see results related to 'python2'
    Then Close the browser


  Scenario: Searching with python1

    When Search with 'python1' on web
    Then Should get to see results related to 'python1'
    Then Close the browser


  Scenario Outline: Search with multiple keywords
    When Search with <key> on the web search
    Then I should get to see results related to <key>
    And Close the browser

    Examples: Examples for key's
      |key|
      |Kohli|
      |Sachin|
      |Dhoni |
      |Dhawan|
      |Raina |










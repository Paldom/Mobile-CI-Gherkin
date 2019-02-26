Feature: Logging in
    As a registered user of the application
    I want to log in
    So that I can access other features

    Background:
        Given I navigated to 'login' screen

    @auth @smoke
    Scenario: Missing credentials
        Given form is empty
        When I try to log in
        Then I see message saying 'Log in failed'

    @auth @smoke
    Scenario Outline: Valid username and password
        When I give username <username>
        And I give password <password>
        And I try to log in
        Then I see message saying 'Successful log in'

        Examples:
            | username | password |
            | alice    | abc123   |
            | bob      | LfdVD=An |

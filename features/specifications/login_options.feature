Feature: Select login type
    I can select register myself in app or login using a user already registered

    Background: 
        Given I'm in Intro page
        And I tap Iniciar app button

    Scenario: I can select register myself
        Given I'm in login types screen
        When I tap in sign up button
        Then Register screen should be displayed

    Scenario: I can log in
        Given I'm in login types screen
        When I tap in sign in button
        Then Login screen should be displayed
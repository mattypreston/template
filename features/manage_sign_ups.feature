@javascript
Feature: Manage sign_ups
  In order to get access to protected sections of the site
  As a user
  I want to be able to sign up

    Background:
      Given I am not logged in
      And I am on the home page
      And I go to the sign up page

    Scenario: User signs up with valid data
      And I fill in the following:
        | Email                 | user@test.com   |
        | Password              | please          |
        | Password confirmation | please          |
      And I press "Sign up"
      Then I should see "Sign out user@test.com"
      Given I am not logged in
      Then I should see "Sign in"
      And I go to the sign in page
      And I fill in the following:
        | Email                 | user@test.com   |
        | Password              | please          |
      And I press "Sign in"
      Then I should see "Sign out user@test.com"



Feature: Sign up
    In order to enjoy Roly
    A user
    Should create an account

    Scenario Outline: Creating new account
        Given I am not register
        When I go to register
        And I fill in "user_email" with "<email>"
        And I fill in "user_password" with "<password>"
        And I fill in "user_password_confirmation" with "<password>"
        And I press "Sign up"
        Then I should see "Login as <email>"

        Examples:
            | email | password |
            | test@roly.com | roly1234 |
            | user@roly.com | 12roly34 |

    Scenario Outline: Creating mobile account
        Given I am not register
        When I register via mobile
        And I fill in "user_email" with "<email>"
        And I fill in "user_password" with "<passphrase>"
        And I fill in "user_password_confirmation" with "<passphrase>"
        And I press "Sign up"
        Then I should see "Login as <email>"

        Examples:
            | email | passphrase |
            | test@roly.com | 123456 |
            | user@roly.com | 367823 |

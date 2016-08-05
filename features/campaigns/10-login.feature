# see https://github.com/matmar10/cucumber-protractor-steps/blob/master/index.js
# for more steps and step configuration

Feature: Campaign Page
  Background: 
    Given I browse "http://localhost:9000"


  Scenario: Invalid Login
  Given I am an anonymous user
  And I am on the homepage
  Then I should see "Sign in"
  Then I wait 1 seconds
    Then I fill in "input[name='account_email']" with "david.elbel@fullstackwebdevelopment.com"
    Then I fill in "input[name='account_password'" with "test"
  And I press "Login"
  Then I should see "Invalid login"



  Scenario: Valid Login
    Given I am on the homepage
    Then I should see "Sign in"
    Then I wait 1 seconds
    Then I fill in "input[name='account_email']" with "david.elbel@fullstackwebdevelopment.com"
    Then I fill in "input[name='account_password'" with "test2"
    And I press "Login"
    Then I wait 1 seconds
    Then I should see "Merchants"



  #And I am on "#/app/merchants/list"
#    And I click on "a[title='Merchants']"
  #Then I wait 4 seconds
 # And I click on "a[id='merchant']"
#    And I click on "#merchant"
#    Then I wait 4 seconds


#    Given I am an anonymous user
 #   Then I go to the homepage
#    Then I wait for the page to load
#    And I see the text "Sign in"
#    And I enter "david.elbel@fullstackwebdevelopment.com" into the "email" field
 #   And I enter "test2" into the "password" field
#    And I see the text "Sign in"
  #  And I click on "Login"
 #   Then I wait 2 seconds
 #   Then I am directed to "app"
#    And I am directed to "app"
#    And I should see "Login" in the "button" element
#    And I fill in "email" with "myemail@email.com"
#    And I fill in "password" with "mypassword"
#    And I check "Remember me"
#    Then I press "Login"
#    And I go to "campaigns"


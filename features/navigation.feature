@SmokeTest @Navigation
Feature: Test navigation module. Mostly a test of the routing and links

@NavigationHome
Scenario: Nagigate to the home page
  Given I navigate to the 'home' page
  When  I click on the 'Home' button
  Then I am at the 'Home' page

@NavigationTeams
Scenario: Navigate to the Teams page
  Given I navigate to the 'home' page
  When I click on the 'Teams' button
  Then I am at the 'all_teams' page

@NavigationLogin
Scenario: Navigate to the Login page
  Given I navigate to the 'home' page
  When I click on the 'Login' button
  Then I am at the 'login' page

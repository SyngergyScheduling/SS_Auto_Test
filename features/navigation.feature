@SmokeTest @Navigation
Feature: Test navigation module. Mostly a test of the routing and links

@NavigationHome
Scenario: Nagigate to the home page
  When I click on the 'home' button
  Then I am at the 'home' page

@NavigationTeams
Scenario: Navigate to the Teams page
  When I click on the 'teams' button
  Then I am at the 'teams' page

@NavigationLogin
Scenario: Navigate to the Login page
  When I click on the 'login' button
  Then I am at the 'login' page

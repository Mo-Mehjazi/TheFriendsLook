Feature: Add new user
  New people register by creating a new user

  Scenario: Create account using Google, Twitter, Facebook or Email
     Given user is not logged in
     When account is successfuly created
     Then new user is added

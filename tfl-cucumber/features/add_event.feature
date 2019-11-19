Feature: Add new event
  Registered users can create events

  Scenario: Create freetime activity 
     Given user is logged in
     When event is successfuly created and verified
     Then new event is added to the databaseS

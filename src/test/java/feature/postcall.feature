#Author: Vikrant Sapkal
#Keywords Summary :
@tag
Feature: Post Calls
  I want to use this template for my feature file

  Background: 
    * url 'https://reqres.in'
    * header Content-Type = 'application/json'

  @tag1
  Scenario: Create user
    Given path 'api/users'
    And request {"name":"Test1","job":"leader"}
    When method POST
    Then status 201

  @tag2
  Scenario: Register - Successful
    Given path 'api/register'
    And request {"email":"eve.holt1@reqres.in","password":"pistol1"}
    When method POST
    Then status 200

  @tag3
  Scenario: Register - UnSuccessful
    Given path 'api/register'
    And request {"email":"eve.holt1@reqres.in"}
    When method POST
    Then status 400

  @tag4
  Scenario: Login - Successful
    Given path 'api/login'
    And request {"email":"eve.holt1@reqres.in","password":"pistol1"}
    When method POST
    Then status 200

  @tag5
  Scenario: Login - UnSuccessful
    Given path 'api/register'
    And request {"email":"eve.holt1@reqres.in"}
    When method POST
    Then status 400

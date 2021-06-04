#Author: Vikrant Sapkal
#Keywords Summary :
@tag
Feature: Delete call
  I want to use this template for my feature file

  Background: 
    * url 'https://reqres.in'
    * header Content-Type = 'application/json'

  @tag1
  Scenario: Delete User
    Given path 'api/users/2'
    When method DELETE
    Then status 204
#Author: Vikrant Sapkal
#Keywords Summary :
@tag
Feature: Put Calls
  I want to use this template for my feature file

  Background: 
    * url 'https://reqres.in'
    * header Content-Type = 'application/json'

  @tag1
  Scenario: Put User details
    Given path 'api/users/2'
    And request {"name":"morpheus","job":"zion resident"}
    When method PUT
    Then status 200
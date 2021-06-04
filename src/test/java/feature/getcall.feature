#Author: Vikrant Sapkal
#Keywords Summary :
@tag
Feature: List of All GET Calls
  I want to use this template for my feature file

  Background: 
    * url 'https://reqres.in'
    * header Content-Type = 'application/json'
  @tag1
  Scenario: List of All Users
    Given path 'api/users?page=2'
    When method GET
    Then status 200

  @tag2
  Scenario: Single User
    Given path 'api/users/2'
    When method GET
    Then assert responseStatus == 200 || responseStatus == 204

  #@tag3
  #Scenario: Single User not found
    #Given path 'api/users/23'
    #When method GET
    #Then status 404
#
  #@tag4
  #Scenario: Delayed Response
    #Given path 'api/users?delay=3'
    #When method GET
    #Then status 304 

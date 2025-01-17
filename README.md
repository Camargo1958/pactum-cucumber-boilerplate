# pactum-cucumber-boilerplate

Boilerplate project to run REST API tests with [Cucumber](https://cucumber.io) and [PactumJS](https://pactumjs.github.io)

## Setup

- Manually clone this project then install all dependencies

## Sample Test Case

```gherkin
Feature: Regres

  In order to keep Regres api stable
  As a tester
  I want to make sure that everything works as expected
  
  Scenario: Get A User With Id
    Given I make a GET request to /api/users/{id}
      And I set path param id to $S{UserId}
     When I receive a response
     Then I expect response should have a status 200
      And I expect response should have a json like
      """
      {
        "data": {
          "id": 7
        }
      }
      """
```

## Running Tests

```sh
npm run test
```

## Gherkin Expressions

Sample Step Definitions

```gherkin
  Given
    I make a (.*) request to (.*)
    I set path param (.*) to (.*)
    I set query param (.*) to (.*)
    I set header (.*) to (.*)
    I set cookie (.*) to (.*)
    I set basic authentication credentials (.*) and (.*)
    I set body to
    I set multipart form data (.*) to (.*)
    I upload file at (.*)
    I set form-data to
    I set inspection
  
  When
    I receive a response
  
  Then
    I expect response should have a status {int}
    I expect response header (.*) should be (.*)
    I expect response header (.*) should have (.*)
    I expect response cookie (.*) should be (.*)
    I expect response should have a json
    I expect response should have a json at (.*)
    I expect response should have a json like
    I expect response should have a json like at (.*)
    I expect response should have a json schema
    I expect response should have a json schema at (.*)
    I expect response should have a body
    I expect response to match a json snapshot (.*)
    I expect response body should contain (.*)
    I expect response should have {string}
    I expect response time should be less than {int} ms
    I store response at (.*) as (.*)
```

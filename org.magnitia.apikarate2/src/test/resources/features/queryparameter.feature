Feature: get weather

  Scenario Outline: get weather details
    Given url 'http://api.weatherapi.com/v1/current.json'
    * params { key : '<x>', q : '<y>'}
    When method GET
    Then status code <sc>
    * def z = $.current.condition.text
    And assert (z == ('clear')|| (z=='mist')||(z=='cloudy')||(z=='sunny')||(z='overcast')
Examples: 
      | x                               | y         | sc  |
      | 09cf4da076154b00b83140743222202 | hyderabad | 200 |
      | 09cf4da076154b00b83140743222202 | pune      | 200 |
      | 09cf4da076154b00b83140743222202 | delhi     | 200 |

Feature: users
Scenario: Testing valid GET endpoint 
Given url 'https://the-internet.herokuapp.com/basic-auth'
And header Authorization = call read ('classpath:basic-auth.js') {username:'admin', password = 'admin'}
When method GET
Then status 200
And print response

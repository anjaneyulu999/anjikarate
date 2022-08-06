Feature: create a post

Scenario: get url from config file
Given url  requestUrl
And request {"userId": 10, "title" : "hi", "body" : "how are you"}
And method POST
Then status 201
And print 'Response is: ', response
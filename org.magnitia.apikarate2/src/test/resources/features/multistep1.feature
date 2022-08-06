Feature: multi step
Scenario: create user
* url ' https://reqres.in/api/login '
* request {"email" : "eve.holt@reqres.in","password" : "cityslicka"}
* method POST
* status 200
* def t = $.token
* url 'https://reqres.in/api/users'
* request {"name" : "kohli", "job" : "justplayer"}
* header Authorization = 'Bearer ' + t
* method POST
* status 201 
* match $.name == 'kohli'
* match $.job == 'justplayer'
* match $.contains { "id" :  #string }
* match $.contains { "createdAt" : #string }
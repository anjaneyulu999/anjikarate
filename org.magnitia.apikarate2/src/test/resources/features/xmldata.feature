Feature: multistep
Scenario: multistep with xml payload
* url 'https://restful-booker.herokuapp.com/auth'
* request {"username" : "admin" : "password123"}
* method POST
* status 200
* def xmldata = 
"""
<booking>
    <firstname>Abdul</firstname>
    <lastname>kalam</lastname>
    <totalprice>111</totalprice>
    <depositpaid>true</depositpaid>
    <bookingdates>
      <checkin>2022-04-01</checkin>
      <checkout>2022-04-03</checkout>
    </bookingdates>
    <additionalneeds>Breakfast</additionalneeds>
  </booking>
"""
Given url 'https://restful-booker.herokuapp.com/booking'
* header Content-Type = 'text/xml'
* header Accept = 'application/json'
* header Authorisation = 'Bearer '+t
* config charset = Null
* request xmldata 
When method POST
Then status 200
And match $ response/created-booking/booking/firstname = 'Abdul'
And match $ response/created-bookin/booking/lastname = 'kalam'
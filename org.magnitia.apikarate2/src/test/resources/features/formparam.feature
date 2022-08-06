Feature: customers
Scenario: Add customers
Given url 'https://api.stripe.com/v1/customers'
*def t= 'sk_test_51KbT89SFzB8tVCKajx0twuRHqH692OwxirgczGFZeU12s2Yk7ZVdf79T6OsZP59cZaAa77RrmPtZjw10NLESr5QG00vb6lkacq'
And header Authorization = 'Bearer ' + token
And form field name = 'abdulkalamsir'
And form field description = 'teacher'
And form field description = 'apj@abdulkalam1.com'
When method POST
Then status 200
And print response

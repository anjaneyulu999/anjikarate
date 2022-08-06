Feature: use external code
Scenario: 
* def c = java.type('utiladd.add')
* def obj = new c()
* def output = obj.addition(10,20)
* print output1
* def output2 = c.subtract(10,20)
* print output2 
Feature: Access text file
Background:

* def fp = 'src\\test\\resources\\textfile.txt'
* def tu = Java.type ('util.TextfileUtility')

Scenario:

* def count = tu.getCountOfLinesInTextFile(fp)
* print count
* def line = tu.getValueInTextFile(fp,1)
* print line [0]
* print line [1]
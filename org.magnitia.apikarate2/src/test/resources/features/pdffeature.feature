Feature: create and Access Pdffile

Background:
* def fp1 = 'src\\test\\resources\\myfile.pdf'  # for new file
* def fp2 = 'C:\Users\Anjaneyulu Jajula\Dropbox\PC\Downloads' # path of an existing file
* def pu = Java.type('util.pdffileutility')
* def puobj = new pu()
Scenario:
* def x = puobj.CreateDocument(fp1, "Amma nanna one testing job")
* def y = puobj.getPagesCount(fp2)
* def z = puobj.getPageText(fp2, 10)
* print y,z
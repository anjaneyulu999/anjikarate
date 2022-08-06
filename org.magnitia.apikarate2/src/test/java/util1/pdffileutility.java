package util1;

import java.io.File;
import java.io.FileOutputStream;

import com.itextpdf.text.Document;

import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;

public class pdffileutility
{
public void CreateDocument(String fp, String text) throws Exception
{
	File f=new File(fp);
	FileOutputStream fo=new FileOutputStream(f);
	Document doc=new Document();
	PdfWriter w=PdfWriter.getInstance(doc, fo);
	doc.open();
	doc.add(new Paragraph(text));
	doc.close();
	w.close();
}
public int getPagesCount(String fp) throws Exception
{
	PdfReader pr=new PdfReader(fp);
	return(pr.getNumberOfPages());
}
public String getPageText(String fp, int pn) throws Exception
{
	PdfReader pr=new PdfReader(fp);
	String myline=PdfTextExtractor.getTextFromPage(pr, pn);
	return(myline);
}
}

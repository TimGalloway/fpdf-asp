<!--#include file="fpdf.asp"-->
<%
Set pdf=CreateJsObject("FPDF")
pdf.CreatePDF
pdf.SetPath("fpdf/")
pdf.SetFont "Arial","B",16
pdf.Open()
pdf.AddPage()
pdf.Cell 40,10,"Hello, world!"
pdf.Close()
pdf.Output "C:\temp\test.pdf", "test.pdf" , False
%>
# easycom
A web-based assistant for freelancers - for time recording and invoicing.

The workflow is as follows:
 * The freelancer creates customers with number, name, address, ...
 * Per customer time records can be created with a start time, end time, 
	comment, and hourly rate
 * Time records can be accounted with one click to an invoice
 * Invoices can be created manually, edited, marked as paid, and
  exported as PDFs (via Latex template)

![Customer view](/screenshots/1_customer.png?raw=true "Customer view")
![Time record edit window](/screenshots/2_timerecord_edit.png?raw=true "Time record edit window")
![Invoice list](/screenshots/3_invoices.png?raw=true "Invoice list")
![Invoice edit window](/screenshots/4_invoice_edit.png?raw=true "Invoice edit window")

## Insights
easycom consists of a web based user interface (ui) and a server based backend,
with a REST based communication in between.
Recently there is one implementation of the web based ui with Sencha ExtJS and
a simple php backend for testing. 
The backend should be reimplemented in a more
reliable and stable way.
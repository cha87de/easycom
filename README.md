# easyCOM - an overview [![Build Status](https://travis-ci.org/cha87de/easycom.svg)](https://travis-ci.org/cha87de/easycom)
A web-based assistant for freelancers - for time recording and invoicing. The typical workflow could be:

 1. create customer record
 2. add working time records with hourly rate
 3. one-click invoice creation on unaccounted time records
 4. export invoice as pdf (via Latex template)
 5. mark invoice as paid
 
*If this workflow fits your needs, easycom will save an incredible amount of your time.*



## Screenshots
<img src="/screenshots/1_customer.png?raw=true" width="400">
<img src="/screenshots/2_timerecord_edit.png?raw=true" width="400">
<img src="/screenshots/3_invoices.png?raw=true" width="400">
<img src="/screenshots/4_invoice_edit.png?raw=true" width="400">

## Insights
easycom consists of a web based user interface (ui) and a server based backend,
with a REST based communication in between.
Recently there is one implementation of the web based ui with Sencha ExtJS and
a simple php backend for testing. 
The backend should be reimplemented in a more
reliable and stable way.

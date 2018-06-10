# easyCOM [![Build Status](https://travis-ci.org/cha87de/easycom.svg)](https://travis-ci.org/cha87de/easycom)
A web-based assistant for freelancers - for time recording and invoicing. The typical workflow could be:

 1. create customer record
 2. add working time records with hourly rate
 3. one-click invoice creation on unaccounted time records
 4. export invoice as pdf (via Latex template)
 5. mark invoice as paid
 
*If this workflow fits your needs, easycom will save an incredible amount of your time.*

## Screenshots
<img src="https://github.com/cha87de/easycom/raw/master/screenshots/1_customer.png?raw=true" width="400">
<img src="https://github.com/cha87de/easycom/raw/master/screenshots/2_timerecord_edit.png?raw=true" width="400">
<img src="https://github.com/cha87de/easycom/raw/master/screenshots/3_invoices.png?raw=true" width="400">
<img src="https://github.com/cha87de/easycom/raw/master/screenshots/4_invoice_edit.png?raw=true" width="400">

## Technical details
easyCOM consists of a web based user interface (ui) and a server based backend,
with a REST based communication in between.
The web based ui is based on Sencha ExtJS. Currently a sim simple php backend exists testing.
The backend should be reimplemented in a more reliable and stable way.

## Setup Guide

### Use prebuild Docker image

Get easily started with docker:

```
docker run -d -p 8080:80 \
    -v $(pwd)/easycom-data:/var/www/html/easycom-phpbackend/_data/
    cha87de/easycom:master
```

### Use with any existing webserver
If you want to install easyCOM, please follow these steps:

 1. Prerequisite: a php enabled Apache2 webserver with rewrite module, the texlive packages for latex compilation.
 2. Download the `easycom.tgz` build archive from the releases at https://github.com/cha87de/easycom/releases
 3. Extract the easycom.tgz folder into a valid document root of your webserver.
 4. Open your browser and point to your webserver.

## Developers Guide

If you want to prepare and run a development environment, follow these steps:

 1. Checkout this git repository, with all git submodules, via `git clone --recursive git@github.com:cha87de/easycom.git`
 2. Prepare your workspace: install Sencha Command, download Sencha Ext JS, create a sencha workspace, and finally add easycom-webui to the sencha workspace. All that can be done at once by calling `./workspace-init`.
 3. Write code, or do whatever you want with the source :-)
 4. Run the development environment e.g. in a Docker container. If you have docker installed, simply call `./workspace-run-dev` to do this magic. Open your webbrowser and point it to http://localhost:8080/easycom/.

## Improve easyCOM!

Any help is absolutely welcome! 

 * Provide code input via merge request on github
 * [Donate the easyCOM author to support further development](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=Y4MESA6J72MDN)

Please report bugs and wishes via github issues.

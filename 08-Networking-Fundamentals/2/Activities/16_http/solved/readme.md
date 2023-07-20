## Solution Guide: Analyze HTTP Data

The goal of this exercise was to practice analyzing captured HTTP packets. This exercise also emphasized the security risk presented by unencrypted HTTP traffic.

This activity required the following steps:

   - Opening a packet capture.
   
   - Creating a filter for HTTP traffic.
   
   - Isolating websites and the PHP webpages visited within those websites.
   
   - Analyzing `POST` requests for transmitted data.

---

First, open the packet capture in Wireshark by selecting `File` > `Open`.

- Determine the websites visited by Sally Stealer.  

  - Apply the filter to display HTTP `GET` requests by running the following:

     `http.request.method == "GET"`

- Scan the logs and look in the frame details. Review the various hosts under the HTTP dropdown. The results are:

    - howtobeaspy.com
    - howtousebitcoin.com
    - acmecompany.yolasite.com
    - widgetcorp.yolasite.com

- Determine which PHP pages were visited on the websites.

  - Filter to display HTTP get requests for PHP pages by running the following:

     `http && frame contains "php HTTP"`

  The results are:

  - `salesprojections.php`
  - `Intellectualproperty.php`

- Determine if Sally sent any communications. 

  - Filter to look for the `POST` command using:

     `http.request.method == "POST"`

  - Open the HTML form URL under the HTTP data. The communication states:      

    _"This is Sally Stealer, I have the secret sales projections and intellectual property as we discussed. Please send me the 5 bitcoins as promised.  Hurry. Acme is starting to have suspicions."_

- Summarize the findings to determine if Sally has malicious intent.

    - Based on the websites Sally accessed and the message she sent to WidgetCorp, it's clear she is a spy trying to sell private data to Acme Corp's rival.
---
 &copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
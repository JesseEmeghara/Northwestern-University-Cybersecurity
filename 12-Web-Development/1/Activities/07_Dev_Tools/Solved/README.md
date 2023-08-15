## Solution Guide: Inspect with Developer Tools

The goal of this activity was to get comfortable using your browser's native tools to examine HTTP requests and responses, particularly security headers. For this specific task, you inspected request and response headers from www.crowdstrike.com.

---

### Request Headers

 Scroll to the bottom of the **Headers** tab to view the **Request Headers** section.

- **Question 1:** Are there any notable security request headers that we've discussed? If so, what do they mean?

    - Solution: The **upgrade-insecure-requests** header, which is the browser's way of requesting that the HTTP server use HTTPS to communicate with it.


### Response Headers

Scroll up to the **Response Headers** section.

- **Question 2:** What response headers do you recognize from today's class? What do they mean?

    - Solution: **Set-Cookie** was set in the response header

- **Question 3:** Are there any notable security response headers that we've discussed? If so, what do they mean?

    - Solution:

        - **Referrer Policy:** `strict-origin-when-cross-origin` means that when a link on an external website leads to crowdstrike.com, that website is logged for statistical analysis (usually for ad payment). 
        
            It also forbids your browser from sending information between https://crowdstrike.com and http://crowdstrike.com (secure HTTPS to plaintext HTTP).

        - **Strict-transport-security** tells an HTTP client that it should only be accessed over HTTPS and not HTTP. This is the response header version of **upgrade-insecure-requests**.

        - **X-xss-protection**: `1`

            - While we didn't cover this in the demo, it is a notable response header that tells the browser, "If you detect a cross-site script being loaded, stop loading the page." It's essentially another level of protection in case the page has been compromised.

---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.

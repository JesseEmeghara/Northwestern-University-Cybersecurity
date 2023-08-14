## Activity File: Use curl

In this activity, you will continue in your role as a web application security engineer.

- You are tasked with writing various `curl` commands to interact with an HTTP web server. 

- You will use various `curl` options, request methods, and request headers to return specific responses.

Use the [curl Reference Sheet](https://docs.google.com/document/d/18IkhxEUQ9-eyEH8JhWFaQf5zhM5HzFv8YVCHS0c42Gw/edit?usp=sharing) as a reference for your activity.

### Instructions

Use `curl` commands to send HTTP requests to the site httpbin.org.

After constructing and testing each `curl` command, answer the questions that follow.

1. Send a GET request

    - Run a GET request to httpbin.org/anything.

    - What is returned by this request? Is there anything that identifies the requestor?

2. Retrieve response headers

    - Run a GET request to httpbin.org with an added `curl` argument to display response headers.

    - What is the content type for this page?

3. Retrieve new response headers

    - Run a GET request to httpbin.org/anything with an added `curl` argument to display response headers.

    - What is the content type for this page?

4. Send a POST request

    - Run a POST request that enters `'{"Developer": "Andrew"}'` for the data argument.
    
   - Under what JSON object does the posted data appear?

5. Set parameters

    - Run a POST request with the added parameters `?EmployeeDirectory=frontend`.

    - After the parameters go through, where do they appear in the JSON response body?

6. Set headers

    - Run the same POST from Step 4 with an added header: `-H "Content-Type: application/json"`.

    - Where does the request body data end up?

---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved. 

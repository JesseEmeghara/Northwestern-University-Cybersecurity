## Solution Guide: Use curl

The goal of this activity was to get familiar with the command-line tool `curl`. `curl` is one of the most widely used tools by security professionals for investigating HTTP requests and responses.

---

1. Send a GET request

    - Run a GET request to httpbin.org/anything:
        - `curl https://httpbin.org/anything`

    - What is returned by this request? Is there anything that identifies the requestor?
        - A JSON response body is received that shows requestor information, such as the requestor's IP address.

2. Retrieve response headers

    - Run a GET request to httpbin.org with an added `curl` argument to display response headers:
        - `curl https://httpbin.org/ --head`

      - What is the content type for this page?
        - The `Content-Type` is HTML.

3. Retrieve new response headers

    - Run a GET request to httpbin.org/anything with an added `curl` argument to display response headers: 
        - `curl https://httpbin.org/anything --head`

    - What is the content type for this page?
        - The `Content-Type` is JSON.

4. Send a POST request

    - Run a POST request that enters `'{"Developer": "Andrew"}'` for the data argument:
        - `curl -X POST "https://httpbin.org/anything" -d '{"Developer": "Andrew"}'`

     - Under what JSON object does the posted data appear?
        - The data appears under the `form` JSON object.

5. Set parameters

    - Run a POST request with the added parameters `?EmployeeDirectory=frontend`:
        - `curl -X POST "https://httpbin.org/anything?EmployeeDirectory=frontend"`

    - After the parameters go through, where do they appear in the JSON response body?
        - The parameters appears under the `args` JSON object.

6. Set headers

    - Run the same POST from Step 4 with an added header: `-H "Content-Type: application/json"`:

        - `curl -X POST "https://httpbin.org/anything" -d '{"Developer": "Andrew"}' -H "Content-Type: application/json"`
    - Where does the request body data end up?

        - Setting the JSON `Content-Type` made it so the JSON appeared under `json`.

    



---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.



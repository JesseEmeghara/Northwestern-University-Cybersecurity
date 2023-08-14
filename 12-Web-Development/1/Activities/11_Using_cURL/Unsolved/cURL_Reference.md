# curl References

This is a reference sheet for your second activity but also the rest of this day's lesson.

## The curl Syntax

### curl

`curl` is a tool to transfer data from or to a server using one of the supported protocols without user interaction.

```bash
# Fetch HTML
curl example.com
```

- This fetches the HTML for a webpage using a GET request.

```bash
# View the request or response text
curl -v example.com
```

- This views the request or response text by adding the `-v` flag.


###

```bash
# View the response headers
curl -I example.com
```

- This uses the `-I`  flag to view the response headers only.



###

```bash
# Set a request type and URL
curl --request GET --url example.com
```

- This explicitly sets a request type and URL with the `--request` and` --url` options.


###

```bash
# View available options
curl --help
```

- The `--help` flag shows all available options for curl command.

###

```bash
# Send a GET request with parameters
curl --request https://example.com/get?parameter=value
```

- This sends a GET request to the /get endpoint with the indicated parameters. 

  - `-- request`: Set the request type
  - `-- name`: Your name
  - `-- location`: Your current city


###

```bash
# Send a GET request with parameters and show both request and response headers
curl -v --request https://example.com/get?name=rodric&location=atlanta
```

- This sends a GET request to the /get endpoint with the parameters name and location and prints out both request and response headers.

  - `-v`: Show more detailed info like both request and response headers
  - `--request`: Set the request type
  - `name`: Your name
  - `location`: Your current city


###

```bash
# Send a POST request with parameters
curl -v --request POST --url https://postman-echo.com/post --data 'name=<yourname>&location=<yourlocation>'
```

- This sends a POST request to the /post endpoint using the same data as the query parameters before, but using curl's --data option instead.

  - `--url`: Specific custom URL
  - `--data`: Specify parameters

```bash
# Send a GET request with request headers
curl -X --url https://httpbin.org/bearer -H 'authorization: {Type} {Credential}'
```

- This sends a GET request to the bearer endpoint for httpbin.org. You need to set the `type` of authorization and the `credential`.

  - `-H`: Sets a request header
    

---

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.  
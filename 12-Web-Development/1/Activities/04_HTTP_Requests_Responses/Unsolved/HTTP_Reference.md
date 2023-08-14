# HTTP Requests and Responses Reference

This is a reference sheet for your first activity but also the rest of this day's lesson.

**Table of Contents**

<!-- TOC -->

- [HTTP Requests and Responses Reference](#http-requests-and-responses-reference)
  - [Client&ndash;Server Architecture](#client-server-architecture)
  - [HTTP](#http)
    - [The HTTP Exchange](#the-http-exchange)
    - [The HTTP Client](#the-http-client)
    - [The HTTP Server](#the-http-server)
    - [Example of an HTTP Request](#example-of-an-http-request)
    - [Example of an HTTP Response](#example-of-an-http-response)
  - [HTTP Requests](#http-requests)
    - [HTTP Request Methods](#http-request-methods)
    - [Common HTTP Request Headers](#common-http-request-headers)

  - [HTTP Responses](#http-responses)
    - [HTTP Response Status Codes](#http-response-status-codes)
    - [HTTP Response Headers](#http-response-headers)


<!-- /TOC -->

## Client&ndash;Server Architecture

An example of the typical web client and server architecture:

![A diagram of an HTTP web client&ndash;server model shows a cycle of requests and responses between the web client and servers.](Images/HTTP_web_client_server.png)

---

## HTTP

The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypermedia information systems. This is the foundation for data communication for the World Wide Web (i.e., internet) since 1990. HTTP is a generic and stateless protocol that can be used for other purposes, including using extensions of its request methods, error codes, and headers.

### The HTTP Exchange

- HTTP is a request and response protocol based on the client&ndash;server architecture where web browsers, robots, search engines, etc. act like HTTP clients and the web server acts as a server.

- HTTP is based on the client&ndash;server architecture model and is a stateless request and response protocol that operates by exchanging messages across a reliable TCP/IP connection.

### The HTTP Client

- An HTTP "client" is a program, such as a web browser, that establishes a connection to a server for the purpose of sending one or more HTTP request messages.

### The HTTP Server

- An HTTP "server" is a program (generally a web server like the Apache web server) that accepts connections in order to serve HTTP requests by sending HTTP response messages.

### Example of an HTTP Request

- An example HTTP GET request for the webpage http://www.example.com/hello.html is:


  ```HTTP
  GET /hello.html HTTP/1.1
  User-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)
  Host: www.example.com
  Accept-Language: en-us
  Accept-Encoding: gzip, deflate
  Connection: Keep-Alive
  ```

    (Note that this example has no request body.)

### Example of an HTTP Response

- An example HTTP 200 response to the request example above:


  ```HTTP
  HTTP/1.1 200 OK
  Date: Mon, 27 Jul 2009 12:28:53 GMT
  Server: Apache/2.2.14 (Win32)
  Last-Modified: Wed, 22 Jul 2009 19:15:56 GMT
  Content-Length: 88
  Content-Type: text/html
  Connection: Closed
  ```

- An example of the response body (HTML):

  ```HTML
  <html>
      <body>
      <h1>Hello, World!</h1>
      </body>
  </html>
  ```

---

## HTTP Requests

### HTTP Request Methods

<!-- prettier-ignore -->
| HTTP Request Method | Description                                                                                                                           |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| GET         | The GET method requests a representation of the specified resource. Requests using GET should only retrieve data.                     |
| HEAD        | The HEAD method asks for a response identical to that of a GET request but without the response body.                                |
| POST        | The POST method is used to submit an entity to the specified resource, often causing a change in state or side effects on the server. |
| PUT         | The PUT method replaces all current representations of the target resource with the request payload.                                  |
| DELETE      | The DELETE method deletes the specified resource.                                                                                     |
| CONNECT     | The CONNECT method establishes a tunnel to the server identified by the target resource.                                              |
| OPTIONS     | The OPTIONS method is used to describe the communication options for the target resource.                                             |
| TRACE       | The TRACE method performs a message loop-back test along the path to the target resource.                                             |
| PATCH       | The PATCH method is used to apply partial modifications to a resource.                                                                |

---

### Common HTTP Request Headers

<!-- prettier-ignore -->
| Header  | Usage and Paramaters   | Description                                                                                                                                                                                                                                                                                         |
| ------------- | ---------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | {type} {credentials}         | The HTTP Authorization request header contains the credentials to authenticate a user agent with a server, usually but not necessarily, after the server has responded with a 401 Unauthorized status and the WWW-Authenticate header.                                                                     |
| Referer       | {url}                        | The Referer request header contains the address of the previous webpage from which a link to the currently requested page was followed. The Referer header allows servers to identify where people are visiting from and can use that data for analytics, logging, or optimized caching. |
| Cookie        | {Cookie_Name}={Cookie_Value} | The Cookie HTTP request header contains stored HTTP cookies previously sent by the server with the Set-Cookie header.                                                                                                                                                                                       |
| User-Agent    | {product}                    | The User-Agent request header is a characteristic string that lets servers and network peers identify the application, operating system, vendor, or version of the requesting user agent.                                                                                                               |

---

## HTTP Responses

### HTTP Response Status Codes

<!-- prettier-ignore -->
| Status Code               | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **200 Codes**          | **Successful Responses**                                                                                                                                                                                                     |
| 200 OK                    | The request has succeeded. The meaning of the success depends on the HTTP method.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| **300 Codes**           | **Redirects**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 301 Moved Permanently     | The URL of the requested resource has been changed permanently. The new URL is given in the response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| **400 Codes**           | **Client Errors**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| 400 Bad Request           | The server could not understand the request due to invalid syntax.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 401 Unauthorized          | Although the HTTP standard specifies "unauthorized," semantically this response means "unauthenticated." That is, the client must authenticate itself to get the requested response.                                                                                                                                                                                                                                                                                                                                                                                                          |
| 403 Forbidden             | The client does not have access rights to the content, i.e., it is unauthorized, so the server is refusing to give the requested resource. Unlike 401, the client's identity is known to the server.                                                                                                                                                                                                                                                                                                                                                                                      |
| 404 Not Found             | The server cannot find the requested resource. In the browser, this means the URL is not recognized. In an API, this can also mean that the endpoint is valid but the resource itself does not exist. Servers may also send this response instead of 403 to hide the existence of a resource from an unauthorized client. This response code is probably the most famous one due to its frequent occurrence on the web.                                                                                                                                                                     |
| 429 Too Many Requests     | The user has sent too many requests in a given amount of time ("rate limiting").                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| **500 Codes**           | **Server Errors**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| 500 Internal Server Error | The server has encountered a situation it doesn't know how to handle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| 502 Bad Gateway           | This error response means that the server, while working as a gateway to get a response needed to handle the request, got an invalid response.                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| 503 Service Unavailable   | The server is not ready to handle the request. Common causes are a server that is down for maintenance or overloaded. Note that together with this response, a user-friendly page explaining the problem should be sent. This response should be used for temporary conditions and the Retry-After: HTTP header should, if possible, contain the estimated time before the recovery of the service. The webmaster must also consider the caching-related headers that are sent along with this response, as these temporary condition responses should usually not be cached. |

---

### HTTP Response Headers

HTTP response headers let the client and server pass additional information with an HTTP request or response. An HTTP header consists of its case-insensitive name followed by a colon and its value. Whitespace before the value is ignored.

<!-- prettier-ignore -->
| **Header**     | **Usage**                                                                                                                                                                                 | **Description**                                                                                                                     |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| Connection       | keep-alive                                                                                                                                                                                  | The client would like to keep the connection open. Having a persistent connection is the default on HTTP/1.1 requests. |
| Set-Cookie       | The Set-Cookie HTTP response header is used to send cookies from the server to the user agent, so the user agent can send them back to the server later.                                    |
| X-XSS-Protection | The HTTP X-XSS-Protection response header is a feature of Internet Explorer, Chrome, and Safari that stops pages from loading when they detect reflected cross-site scripting (XSS) attacks. |

---

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.  
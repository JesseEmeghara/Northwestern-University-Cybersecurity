## Activity File: Monolith to Microservices

In this activity, you will play the role of a systems engineer.

- Your company has a web store app that is becoming popular. 

- The store must switch its architecture so it can be more redundant and scalable. You decide to make the transition from traditional monolith to microservices.

- You have to design a microservices setup based on the current monolithic web store app diagram.

### Instructions

1. Review the current monolithic web store app diagram:

    ![Current monolithic web store app diagram.](../../../Images/Activity_1_Unsolved.png)

    - **Note:** It is not important that you know exactly what each microservice does. It _is_ important that you know _why_ you are separating them: So that each serves a single function, allowing for repeatable and scalable infrastructure.

2. Using your browser, go to the site [draw.io](https://www.draw.io/). Select **Open Existing Diagram** and select the file `activity_one_unsolved.drawio`. 
    
    - Your instructor should have sent this file along with the activity instructions. 


4. Edit the diagram. As components are removed from the main rectangle, create a new rectangle to surround each individual component and label it accordingly. 

    - When you add a rectangle, right-click it and select **To Back** to make it look like it is behind the component. 

5. Using a rectangle, indicate each of the following servers:

    - Store app server
    - User server 
    - Authentication server 

6. In addition, split the monolithic database into three distinct components:

    - One database to handle all user information from the store app, such as preferences and sessions
    - One database to store credential information that the authentication server checks
    - One inventory database that is updated when a user buys something from the store

7. Connect each new database to its corresponding server.

#### Bonus

Your customer service department is receiving complaints that the company's e-commerce store regularly times out when customers try to access it. This is a sign that the store app is unable to process all the requests.

- Redesign your setup to include a load balancer and two identical versions of the store app.

**Note:** Remember to show the basic information flows between the microservices.

---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.


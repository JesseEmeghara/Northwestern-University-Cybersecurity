## 14.1 Lesson Plan: Project Introduction and Setting Up Your Web Application

### Overview

This week, students will use **Microsoft Azure** to build and host their own web application, secure it with an SSL certificate, and add security features to protect it. This week will incorporate topics from our previous lessons, including: networking, network Security, cryptography, terminal, cloud, and web development. 

### Week Objectives

Students will use the following skills and knowledge to complete the project:

- Deploy web applications using Microsoft Azure Cloud. 
- Deploy Docker containers to create web applications.
- Configure front-end code on the web application.
- Use Azure Cloud to create a domain for the web application.
- Modify DNS records on the cloud application.
- Create self-signed SSL certificates using OpenSSL.
- Add certificates to the cloud Key Vault.
- Bind certificates to the web application.
- Utilize cloud security services to protect the web application.

### Daily Objectives and previous lesson topics covered

- **Day 1:** Students will **build, host, and design** their own web application.
  - This day will incorporate topics from the Networking, Cloud, and Web Development modules.
- **Day 2:** Students will **secure** their web application with SSL certificates.
  - This day will incorporate topics from the Cryptography and Terminal modules.
- **Day 3:** Students will **protect** their web application with Azure's security features.
  - This day will incorporate topics from the Network Security module.


### Instructor Notes

This is the last week of class before students begin to study security-specific material. Students have come a long way in the course, so be sure to acknowledge their hard work and the skills they've learned.

- This week does not include specific times for individual lectures and activities, but you should follow the day-by-day breakdown.

- Be sure to keep a record of students who miss any days of the project. Notify those students that they will need to catch up on any missed work as each day's activities build upon each other, and need to be completed in the order they are presented.

:warning: This project requires students to register a domain for a web application that they will work on throughout the project. 

- Registering for a domain typically costs money. We understand that spending additional money for this class can be a pain point for students. Therefore, we have created a work-around in which students can create a free, personalized Azure web app. We will also include options for paid domains if students wish to use this method to create and maintain their site.

-  We will provide two sets of instructions that students can use to complete this project. One set creates a project that's completely free. The other set of instructions require payment in order to create a personalized domain.
  - Based on their choice, the students will follow specific project instructions.
  - Students can elect to cancel their domain for a full refund if they cancel their domain within five days of ordering.

- Please emphasize that students are in no way required to choose the paid options. In the coming lecture, we will explain the value that a personal cybersecurity blog and online resume can provide. We will provide pros and cons for each option in order for the students to make an informed decision. However, the choice is completely voluntary, and the educational value of each option is the same, whether it's free or paid. 

While each student is expected to complete and submit projects individually, you can encourage students to work through problems together.

The **grading rubric** for this project is located in the `Resources` folder:

- [Project 1 Grading Rubric](https://docs.google.com/document/d/1MXZSyooeNEdYwBwYsbiLaOVxmc1x-LyY7M54BLGtkkY/edit)

**:warning: Important! :warning:**: Projects need to be graded by the instructional staff. Central grading does not grade projects. 

### Lab Environment

Students will continue using their personal Azure accounts and building upon their existing Azure VMs. They will **not** use their Cyberxsecurity accounts.

### Additional Resources


### Slideshow

The slideshow for today is located on Google Drive here: [Project 1 Day 1 Slides](https://docs.google.com/presentation/d/1ZKamLxz1u_p9T_L8yMi-g3hKtsRRHbkSFx8sGNgShZE/).

---

## Day 1: Creating Your Web Application


### 01. Instructor Do: Welcome and Project Overview  

Welcome students to class and explain that today is the first day of **Project Week 1**.

- Begin by emphasizing that students have learned a substantial amount up to this point, including:
   - Terminal
   - Systems administration
   - Networking
   - Network security
   - Cryptography
   - Virtualization
   - Cloud deployment
   - Web development

-  Congratulate them on having made it this far and point out that they will get to apply **ALL** of these skills in this first project!

#### Digital Resumes/Blogs

Explain that while it is quite common for cyber and IT professionals to use standard paper resumes to illustrate their education and work history, it is becoming more common for these professionals to use web applications to showcase their skills.

These web applications use many of the following features:

  - **Digital Resumes**
    - They are a digital introduction to a candidate; it is simply a resume, but online.  
    - While digital resumes are often used by web developers to showcase their development skills, cyber professionals can apply security features to these web applications to showcase their skills.
    - They can include interactive features not available on a standard resume, such as videos.
  - **GitHub Portfolios** 
    - GitHub portfolios are similar to digital resumes, except they use an interface called **GitHub** which can assist in breaking out projects into directories to showcase their different projects or code.
  - **Online Blogs**
    - Online blogs can be used by IT and cyber professionals to share articles and discussion topics to engage with their network and community.
    - An example of a popular cyber blog is [www.krebsonsecurity.com](http://www.krebsonsecurity.com) (pull up and display the webpage).
  
Explain that these web applications can also be used to apply to positions or simply to build a professional brand. 
  - Additionally, they can be used in interviews to discuss the candidate's cyber knowledge.

For this first project, students will combine many of the topics they've learned in the previous modules in order to create, deploy, and secure their very own live web application&mdash;an online cyber blog!
  - Point out that this web application will be a tangible project that students can use for their career development after the completion of this course.


#### Daily Structure

Explain that project week will run differently than previous classes.
- Each day will proceed as follows:
  - (1) A brief lecture introducing new concepts.
  - (2) A brief overview of students' daily project tasks.
  - (3) Students will be provided a guide and work on completing their tasks for the remaining class time.
    - The daily guides will conclude with review questions, which will be submitted at the conclusion of the project.
   
⚠️ **Important** ⚠️
   
   - Each student will submit their own project. They can choose to work independently or in groups, but they are **required** to remain in class (online or in person).
   - Each day's lesson builds on the previous day, so all activities are required to be completed **in order**.

#### Daily Objectives and Milestones

Introduce the high-level objectives for each day of Project 1 as well as the modules lessons that will be utilized during each day:

- **Day 1:** Students will **build, host, and design** their own web application.
  - This day will incorporate topics from the Networking, Cloud, and Web Development modules.
- **Day 2:** Students will **secure** their web application with SSL certificates.
  - This day will incorporate topics from the Cryptography and Terminal modules.
- **Day 3:** Students will **protect** their web application with Azure's security features.
  - This day will incorporate topics from the Network Security module.

Let students know that while they will work independently this week, they should aim to have a certain amount of work done by the end of each day. 
  - Specifically, the suggested milestones are:
    - **Day 1** (Today): Complete the build, host, and design of their web application.
    - **Day 2**: Create SSL certificates and add to their web application.
    - **Day 3**: Install Azure's Front Door WAF, and analyze Azure's security recommendations. 
      - Additionally, finish any outstanding tasks from Day 2 and spend the majority of class answering questions in the brief.


Remind students that while they must complete their projects individually, they can work through problems together, and they should ask instructional staff for help if they get stuck.


#### Project Deliverables

Let students know that as they work through the project, they will develop the following deliverables that they can take with them and discuss at job interviews:
 - Note that these will also be submitted as part of their completed project.
   - **Completed Web Application**: Students will submit the accessible domain of their completed web application.
   - **Technical Brief/Review Questions**: Students will submit answers to a series of questions explaining the security features deployed on their web application.

 

#### Today's Class

Let students know that the rest of today's class will proceed as follows:

- Introduction to Azure Web Apps 
- Overview of tasks students will complete on Day 1
- Project work: working through the project steps to develop their web application

Take a moment to address questions before proceeding.

### 02. Instructor Do: Introduction to Azure Web Apps

Remind the class that during the Cloud module, using Azure, we created several virtual machines.  
  - One was a jumpbox to deploy code on the other machines.
  - (2&ndash;3) Virtual machines were created to host a Docker container of the DVWA web application.

Explain to the class that the virtual machines we created in Azure are known as **infrastructure-as-a-service**, or **IAAS**, as we used cloud services to manage the:
  - Operating system (Ubuntu)
  - Middlewear (the software between the OS and the applications)
  - Applications (DVWA container)

Another organization option is to place more responsibility on the cloud provider and to only manage the web applications. This is known as **platform-as-a-service (PaaS)**. 
  - Point out that Azure calls this feature **Azure App Service**.

Explain the advantages of using **Azure App Service** vs. **Azure Virtual Machines** by covering the following:
  - **Azure App Service** can pass responsibility for managing features outside of the web application to the cloud service provider.
    - In other words, the user who is hosting the web app is only responsible for deploying and managing their web application and its associated data. 
  - Deploying web applications can be done much faster, as users don't have to be concerned about configuring their OS.
  - The user doesn't have to worry about the OS and middleware maintenance, such as installing software updates and patching.
  - Azure App Service is cheaper to run than virtual machines.
  - Azure App Service has built-in features for securing and hosting a web application, such as DNS, web app firewalls, domain purchasing, and SSL certification binding.


For this week's project, students will use the many features available through Azure App Service.
  

### 03. Instructor Do: Day 1 Project Overview

Now that students are familiar with Azure Web Apps, we will cover what they'll do on Day 1 of their project. 
- You will shortly provide students a guide with five steps:
  - (1) - **Create an Azure web app**. 
  - (2) - **Choose a domain**.
  - (3) - **Deploy a container on the web app**.
  - (4) - **Design your custom web application**.
  - (5) - **Answer review questions**.

Explain each of the five steps in more depth:

####  (1) - Create an Azure Web App

Students will soon be provided a document that will guide them through all of the steps required to complete Day 1 activities.
  - The very first step will be to create an **Azure Web App** resource.
  - Remind the class to continue using their same subscription and resource group from the Cloud project week.


####  (2) - Choose a Domain

After students create their web application, they will be able to assign their own unique domain to their website.
  - Students will be provided an option with instructions on how to purchase and transfer a domain over from GoDaddy.
  
Because of this cost, there are some additional options available to students for no cost. 

⚠️ **Important** ⚠️ 

- Please emphasize the following about the costs related to this project. 

- Students are in no way required to choose the paid options. In the following section, we will provide pros and cons of each option in order for the students to make an informed decision on which option they choose. Students will be spending the entire week on this web application, and this project has the potential to be a valuable resource long after they graduate this boot camp. Therefore, if they wish to create a domain with a more personalized name, they will be provided with instructions on how to do so through the priced options. However, the choice is completely voluntary, and the educational value of each option is the same, whether it's free or paid. 


**Domain Cost Options**

Review the following two cost options and the advantages and disadvantages of each:

- ***Zero-Cost Option: Azure's Free Domain*** - Students can elect to choose a domain at no cost.
   - **Advantages**: 
     - Zero cost.
     - No setup required, automatically provided when Azure web app is created.
     - SSL certificate has already been added.
   - **Disadvantages**:
     - Domain will always end with **azurewebsites.net** (e.g., *Bobsresume@azurewebsites.net*).
     - DNS will not be able to be modified.
     - On Day 2, there is one limitation to a student activity:
        - Students will walk through the process of creating their own SSL certificates, but they will only do a theoretical activity adding the SSL cert to their website, as they will be unable to add an SSL certificate to the free website.
  
- ***Cost Option: GoDaddy Paid Domain*** - Students can elect to choose a domain at a low cost, starting at 99 cents.
   - **Advantages**:
     - Low cost, starting at 99 cents.
     - Students can choose their own domain.
     - No limitations on any activity this week.
   - **Disadvantages**:
     - Domain will need to be created on a third-party website, GoDaddy.com.
     - Additional steps will be required to point the DNS from GoDaddy over to Azure (these steps will be provided).
  

Emphasize that students may choose either of these two options, and they will be provided unique guides dependent on their choice. 
  
####  (3) - Deploy a Container on the Web App

Students will be provided instructions for deploying a Docker container that contains a framework of a webpage for their custom web application.

####  (4) - Design Your Custom Web Application

Students will be provided instructions for customizing their cyber blog web application.
  - Additionally, students will research two topics to add to their cyber blog.

####  (5) - Answer Review Questions

Day 1's activities will conclude with several questions about their project, reviewing many of the domains covered up to this point in the class.
  - Students should feel free to use any resources available (e.g., class notes, slides, online resources) to answer these questions.

Ask the class if they have any questions about these steps before proceeding to the student activity.


### 04. Student Do: **Building, Hosting, and Designing** Your Own Web Application

Explain that for the remainder of today's class, students will work on completing their Day 1 project tasks.

Remind the students of the following before they start:
  - While each student is responsible for completing their own project, they can use their classmates, TA, or the instructor to assist if they have any questions.
  - Today's milestone is to **complete the build, host, and design of their web application**.
  - Students should use the guide for the domain option that they select (free domain or low-cost domain with GoDaddye).

Send out the following two student guides:


- [Day 1 Guide Using Free Domain with Azure - No Cost](https://docs.google.com/document/d/1NTiTeEeCRCIrI99Vp9XoeEsjEvVedNx4Qb1wK1yK2nM/edit) 
- [Day 1 Guide Using Paid Domain with GoDaddy - $0.99](https://docs.google.com/document/d/1C1Kv1aqOVh5zMikkJKwn_ooxqWQePpb_JlNDPa0d-H8/edit?usp=sharing) 

Additionally, provide students with the following resources to assist with their projects:

- [Azure App Service Documentation](https://docs.microsoft.com/en-us/azure/app-service/)
- [How to come up with a good domain name](https://domains.google/learn/how-to-come-up-with-a-good-domain-name/)
- If Microsoft Support is needed, visit [How to open a support ticket](https://docs.microsoft.com/en-us/azure/azure-portal/supportability/how-to-create-azure-support-request)
- [Split-Half Search](https://www.peachpit.com/articles/article.aspx?p=420908&seqNum=3)

### 05. Instructor Do: Class Conclusion

Congratulate the students for completing Day 1's activities for their first project!

- Point out the following:
  - If the students didn't complete all of the required steps, they can continue them on Day 2.
  - On the next day of the project, they will **secure** their new web applications with SSL certificates.

Ask the class if they have any final questions before concluding the class.


---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.

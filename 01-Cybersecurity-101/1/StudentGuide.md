## 1.1 Student Guide: The Cybersecurity Mindset

### Overview

In today's class, you will familiarize yourself with the structure of the course and learn about some of the topics that will be taught. Towards the end of class, you will learn about the CIA triad and complete a group activity. 

Have fun with these activities and enjoy your first day of class!

### Class Objectives

By the end of class, you will be able to: 

- Explain the course structure and general direction of the program.

- Recognize the high-level security strategies and tools that will be covered in class.

- Define cybersecurity as the assessment of threats and the mitigation of risk.

- Articulate a clear definition of the CIA triad and its elements.

### Slideshow 

The lesson slides are available on Google Drive here: [1.1 Slides](https://docs.google.com/presentation/d/1vYUdZWVxtsYPKjnRsDol9IKGAt5WkghHLRxrRRj9_AY/edit?usp=share_link)

-------

### 01. Introduction 

### 02. Begin Slideshow and SSM Introduce CompTIA

### 03. Instructor Do: The Rise of Cyber

Now it is time to talk about why cybersecurity is such a popular skill today.

  - Dependence on IT systems has grown immensely in recent years. 

  - There are more users online, meaning more potential targets. 

  - Attackers are getting increasingly sophisticated and aggressive, and launching attacks with greater audacity.

  - Cybercriminals are getting more organized.

  - There aren't enough skilled security professionals to fill all the available jobs.

 What examples of breaches have you heard about in the news?

#### Defining Cybersecurity

What comes to mind when you hear the word "cybersecurity"?

- Cybersecurity isn't really about complicated code and evil hackers, as it is so often portrayed. 

- Cybersecurity, as we will understand it in this course, is about **assessing threats** and **mitigating risks**. 

You will have the opportunity to assess threats and mitigate risks in an upcoming thought exercise. First, we are going to provide an overview of the course and the tools we'll use. 

### 05. Course Overview 

In this section, we will provide a high-level overview of the course, including the topics covered, technical tools used, projects, and resources provided. 

#### Course Structure

You can think of this boot camp as six modules that each focus on an important piece of the vast cybersecurity landscape: 

**Module 1:** Security Fundamentals

- The first two weeks of the program will be largely conceptual. This week, you will learn how to think like a security professional, look at the cybersecurity career landscape, and get an introduction to certifications in the space. 

- Next week, we will look at security from an organizational perspective via governance, risk, and compliance, and how these topics affect security controls and other decisions.

**Module 2:** System Administration

- Beginning in Module 2, you will start using technical lab environments to complete activities. You will get comfortable using the command line and hone your systems administration skills in the several modules that follow. 

- We will cover both Linux and Windows systems, and dive into programming with both Bash and PowerShell. You will configure and audit servers, and harden them from malicious attacks.

**Module 3:** Networks and Network Security

- Security professionals are expected to have a strong foundation in networking. In this unit, we’ll cover topics such as network configuration, design, ports, protocols, and data communication. 

- We’ll practice analyzing data packets on the wire and investigating network security attacks and hardening, and cover a variety of topics in cryptography. This module will also examine cloud virtualization and security, and you will complete your first project.

**Module 4:** Offensive Security

- With our networking foundation now established, we’ll explore a variety of offensive topics in security. 

- We’ll start with web architecture and then explore common web vulnerabilities and the hardening techniques associated with them. We’ll then cover ethical hacking and penetration testing, and will use tools like Metasploit.

**Module 5:** Defensive Security 

- We’ll now examine defensive security monitoring and spend a few weeks diving into SIEM with Splunk. We will set up security monitoring, and create alerts, dashboards, and custom reports. 

- You will gain an understanding of the incident response framework, and how to respond to breaches and incidents. We’ll also spend a module on forensics, and will use tools to recover deleted data and solve a sample forensics case.

**Module 6:** Review and Final Projects

- At this point, we’ve covered a lot! It’s time for some focused certification and career prep and review. We will focus primarily on the Security+ exam but will also introduce other relevant exams. In the career prep material, we will sharpen our networking skill and get practice with both behavioral and technical interviewing. 

#### Example Assignments

Let's discuss some examples of the assignments that you will complete during this course. 
- Cybersecurity Policy and Strategy Analysis

- Linux Scavenger Hunt: At the end of module 2, you will work in groups to find a series of flags on a Linux server.

- Networking Capture the Flag (CTF): At the end of the Networking modules, you will work in groups to investigate data packets and find a variety of flags that tie to various networking concepts.

- Master of the SOC: At the end of the SIEM modules, you will work in groups to create a custom security operations center and use the monitoring tools you set up to analyze and protect your organization from potential attacks. 

#### Projects

These modules and assignments will culminate in four projects:

- **Project 1: Securing Cloud Apps:** In the first project week, you will build, secure, and protect a cloud application. You also contribute to the contents of this application by writing your very own cybersecurity blog post!

- **Project 2: Offensive Security CTF:** We will compete in a three-day CTF to attack a fictional organization to determine its vulnerabilities.  

- **Project 3: Building a Monitoring Solution:** You will design a custom monitoring solution for a fictional organization, monitoring the environment during a series of simulated attacks.  

- **Project 4: bootCon** In the final project, you will present independently researched projects that demonstrate one of the following: 

  - Exploiting a vulnerability of an Internet of Things device.

  - Developing code or a program that can complete a cybersecurity task.

  - Demonstration of how a cybersecurity tool that was not covered in class can accomplish a specific goal.

#### Tools We'll Use

While the first couple of modules will primarily focus on fundamental cybersecurity concepts, we will quickly shift to applying IT, networking, and cybersecurity skills in technical environments. 

You will use three kinds of lab solutions throughout this class:

- Web Labs

- Azure Cloud Lab Services

- Personal Azure Cloud accounts

Next, we'll cover each of these categories in depth. 

#### Web Labs

Starting in Week 3, we will use a Linux Ubuntu machine to complete many systems administration, networking, monitoring, programming, and other tasks. 

You will access this machine via a web lab.

  - Access will be provided before Week 3

  - No installation is required, all you need is a web browser!

We will use web labs in the following modules: 

- Terminal

- Linux Systems Administration

- Linux Archiving and Logging Data

- Bash Scripting and Programming

- Networks I and II

- Cryptography

- Web Development

- Web Vulnerabilities 

- SIEM I and II

#### Azure Lab Services

Other modules will require the use of virtual machines (VMs). 

- VMs allow us to run different operating systems. In cases where we will need to use more than one VM, we will access a network of those machines on the cloud. 

- For example: If you have a Windows laptop and want to run a program that is only available on a Mac operating system, you can run a VM on your computer to simulate a Mac on your Windows machine. 

- You can also have this VM deployed on the cloud and connect your computer to that machine. 

- These are simple examples, but they demonstrate why we use VMs. Different operating systems provide different capabilities and access to tools.

Can you think of why we would need to run multiple VMs at the same time?

Examples include: 

  - To practice offensive security, we need an attacking machine and a vulnerable target machine. It would be unethical and most likely illegal to attack actual targets. Therefore, we need to set up target machines to attack. 

  - To set up and monitor alerts during our defensive security modules, we need a machine that is equipped with these monitoring and alerting capabilities and a machine to simulate an attack so we can test the monitors. 

  - To ensure data and resources remain available if a main machine goes offline, we can create multiple machines to use as backups.

Since these lab environments are in the cloud, you will not need to download any tools. However, you will need to register and get set up using class-provided access credentials. 

**EDITOR: Should we say edX-provided access credentials?**

In Module 6, Day 3, you will receive these credentials along with the registration link to your first Azure lab environment, Windows. Instructors will demonstrate how set up Azure Lab Services.

Each unique lab environment in the program will need a new registration link. Instructors will send the new registration link before the start of the module that requires that environment. All you need to do is click the registration link and you should have immediate access to the new lab environment with your Azure Lab Services dashboard. 

We will use Azure Lab Services in the following modules:

- Windows

- Network Security

- Pentesting I and II

- Project 2

- Forensics

#### Personal Azure Accounts

During the Cloud Security and Securing Cloud Apps (Project 1) units, students will use personal Azure accounts. Students need these personal accounts in order to deploy secure virtual networks to their own personal cloud environments. We do not allow students to deploy networks to class-owned cloud environments for security reasons.

You must register yourself for these personal Azure accounts, and will do so in class during module 11, Day 3.  

| :warning: Personal Azure Account Requirement :warning: |
|:-:|
| When creating a personal Azure account, you will be asked to provide a credit card. While required, you will not be charged any money. You will also be provided $200 credit. Do not sign up for this account or use these credits before explicitly prompted to by your instructor.   |

#### Student Resources

Finally, you will have access to many resources for additional learning and review. These include:

- **Student Module Syllabi:** These syllabi will contain weekly overviews of the modules. They will set expectations and provide additional support and material for continued learning. 

- **Student Guides:** Student guides are student-facing versions of the lesson plan. You can use these to follow along with instructor demonstrations and review the content covered in each class.

- **Slides:** You will also have access to the slideshows used in class. 

The following document includes the information on lab environments covered in this section:
- [Cybersecurity Program Lab Solutions](https://docs.google.com/document/d/1CLKaV4hHYiQOCa1ij0yd_DIRSohANT5pJJ6b0wuxz4c/edit#)
 
### 06. Online Learning

:globe_with_meridians: Let's discuss the online nature of this boot camp and some of the tools we'll use to facilitate and optimize learning in an online environment. 

This class will be collaborative and you will spend plenty of time working together on activities. The course is designed to feel like a learning community. This first week is about making you feel comfortable with one another. 

#### Tips

- **Get to know your classmates and instructors:** You’ll get more out of the course if you feel part of a shared community. Social connection can be difficult to develop through a computer screen, but there are ways to get to know your fellow classmates. Participate in class and in your cohort’s Slack space (more on Slack coming up). You don’t have to get too personal, but you can share your security interests and career goals.

- **Treat class time like you would a live class:** If you were sitting in a classroom, there would not be many potential distractions around you. Likewise, you should make the physical area where you sign on to class as distraction-free as possible. If you can, go to a quiet room, silence your phone, and ask others in your home to avoid distracting you while you’re online.

- **Budget time for classwork:** In an online environment, it can be harder to keep track of due dates for  assignments. Deliberately scheduling time throughout the week for your coursework will help. Set aside three hours, three to four times a week for studying and doing homework. Your work won’t feel as overwhelming this way, and you won’t be working on assignments at the last minute!

#### Zoom Online Best Practices

It's okay if you are not familiar with using Zoom in a classroom environment. We will model good Zoom behaviors throughout the program. 

The following link highlights Zoom features like hand raising, polling, screensharing, and breakout rooms.

- [Zoom Features](https://trilogyed.wistia.com/medias/tpycnx2e34)

To start, here is a list of Zoom best practices: 

- **Always mute:** If you are not speaking, put yourself on mute.

- **Set your first and last name:** Help everyone get to know you by including your full name as your screen name.

- **Keep your video on:** Be present during the online class. This includes showing your face.

- **Raise your hand or use Slack for questions:** Don't interrupt a lecture. Use the hand raise feature in Zoom or ask the question via Slack.

  - A TA will answer questions after or during the lecture when appropriate.

- **Use headphones with microphones:** Background noise and feedback echos can be an issue when using your computer mic and speakers. Use headphones with a microphone to improve sound quality and clarity when speaking.

#### Slack

Slack is an online communication tool that is like a forum, instant messenger, and email all rolled into one. It's used by countless organizations worldwide, and you'll be using it every single day for the next six months.

- We will use Slack to send code snippets during class, share important announcements, and facilitate group exercises. 

- You should have received the link to your class-specific channel during orientation. Though there is a Slack web application, for this course you should have the program installed on your machine.

#### Bringing Engagement to the Online Classroom

- The instructor will not be the only person speaking! During demos and reviews of activities, they’ll pause to ask questions. 

- You should submit questions via the appropriate Slack channels. Instructional staff will make sure to cover as many of them as possible at the end of a section.

- We will be using **breakout rooms** regularly throughout the course, starting with a group activity after the break.

- We will perform frequent comprehension checks throughout class using **polls**. Class polls provide you with an opportunity to anonymously indicate your level of understanding of an activity. 

### 07. Break

### 08.  Introduction to First Activity and Breakout Groups 

In this activity, you will start to think like a cybersecurity professional

- Remember the main tasks of cybersecurity: assessing threats and mitigating risks. 

- These two tasks often require creativity and outside-the-box thinking.
 
For each activity, you will be provided the instructions via an activity file that you can access on GitLab. 

### 09. Activity: Assessing Threats

- [Activity File: Assessing Threats](Activities/09_Assessing_Threats/Readme.md)

### 10. Activity Review: Assessing Threats

### 11. Defining the CIA Triad 

Now, we will move on to our first cybersecurity concept: the **CIA triad**. 

The CIA triad highlights the three cornerstones of information security: **confidentiality**, **integrity**, and **availability**.

Define the three key terms in your own words: What is confidentiality, what is integrity, and what is availability?

- **Confidentiality:** The state of keeping or being kept secret or private.

  - This corner of the CIA triad is all about ensuring sensitive information does not reach unauthorized people.

  - Some examples of confidentiality attacks include uploading private photos or communications onto a forum or exposing credit card numbers online.

  - Confidentiality comes down to the principle of "need to know": Data or information should only be made available to those who need access to it.

  - Confidentiality is supported or enforced through various other measures, like encryption, authentication, etc.

- **Integrity:** The quality of being honest, whole, or undivided.

  - The integrity of information refers to protecting information from being modified by unauthorized people.

  - Some examples of integrity attacks include intercepting money transfers and changing the amount in seemingly insignificant ways, allowing for the excess to be sent elsewhere, or altering the grades at a university to be better or worse.

  - These kinds of attacks can be prevented by using a secure hashing algorithm and process when transferring data to ensure it isn't tampered with in transit.

- **Availability:** The quality of being able to be used or obtained.

  - Availability concerns occur when operating systems, equipment, and data are not functioning correctly and thus are not accessible by those who need it.

  - Some examples of an availability attack include cybercriminals taking down a web-connected generator to disable a critical power supply or using a denial of service attack to bring down a financial service provider's website, making it impossible for clients to make transactions.

  - Creating regular backups of data is one way to maintain availability.

Cybersecurity is concerned with the confidentiality, privacy, and integrity of data and data systems.

- We will revisit these terms regularly throughout the program and will explain how the various topics, skills, and practices are concerned with protecting confidentiality, privacy, and integrity.

### 12. Activity: CIA Triad and Security Scenarios

- [Activity File: CIA Triad and Security Scenarios](Activities/12_CIATriad/Unsolved/Readme.md)

### 13. Activity Review: CIA Triad and Security Scenarios

- [Solution Guide: CIA Triad and Security Scenarios](Activities/12_CIATriad/Solved/Readme.md)

### 14. Wrapping Up and Looking Ahead

Congratulations on completing the first day of this boot camp! The pace will pick up quickly, and soon you will complete assignments and projects that showcase a completely new set of skills and comprehension.

#### Looking Ahead

Next class, we will do a deeper exploration of assessing risk and mitigating threats by evaluating specific attacks and vulnerabilities of users, web applications, servers and databases.  

Looking further ahead, in the final day of this module we will examine cybersecurity domains, career pathways, and certifications. 

----

© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.    

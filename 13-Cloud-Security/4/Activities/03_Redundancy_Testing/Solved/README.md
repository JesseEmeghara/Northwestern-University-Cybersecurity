## Solution Guide: Redundancy Testing

To complete this activity, you need to verify that all of your VMs are added to the backend pool for your load balancer and test whether the website continues work if one of your VMs has a problem.

---

1. Verify that all of your VMs are added to the backend pool for your load balancer.

![](../../../Images/Backend-pool.png)

2. Verify that the DVWA site is up and running and can be accessed from the web.

    - Position three windows on your screen so you can see the website and the details page of both VMs in your backend pool.

![](../../../Images/Both-Sites-Running.png)

3. Turn off one of your VMs from the Azure portal. Confirm if you can still access the DVWA website.

Congratulations! You have configured a highly available web server on a secure Vnet using Azure's cloud platform.

---

© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.

## Activity File: Load Balancing

- Previously, you created a jump box on a secure VNet that you can use to run Ansible and configure other machines. You also used this jump box to configure another machine and set up DVWA for the Red Team to use.

- In this activity, you will continue with this setup of DVWA. It needs to be accessible from the internet, and we want to make sure it has high availability and some redundancy. 

- At this time, if the VM receives too much traffic from the Red Team, the server may stop responding (Denial of Service).

- You must install a load balancer in front of the VM to distribute the traffic across more than one VM.

### Instructions

Create a new load balancer in your red team resource group and give it a name. 

- Add a frontend IP address.

	- Give the IP address a unique address name as it will be used to create a URL that maps to the IP address of the load balancer.
	
	- Create a new Public IP Address.

- Add a backend pool.
	
	- Add your Web VMs to the backend pool. 

**Note:** Do not add any inbound or outbound rules.

---

© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.

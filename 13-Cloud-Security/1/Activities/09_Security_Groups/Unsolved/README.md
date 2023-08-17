## Activity File: Security Groups

In this activity, you will continue building out the resources needed for XCorp's Red Team.

- At this time, we have a dedicated resource group and network in place for the Red Team. Before we start launching servers and resources, we want to set up some network protection. 

- You are tasked with creating an NSG to control access to any resources in the subnet you created in the last activity.

- By default, the Azure Security Group rules allow traffic from a load balancer and allows traffic between machines on the vNet.

- To completely secure the vNet, start by creating a rule that blocks **all** traffic.

### Instructions

1. Create an NSG. 

2. Create an inbound security rule that blocks all traffic to your subnet. 

---

© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
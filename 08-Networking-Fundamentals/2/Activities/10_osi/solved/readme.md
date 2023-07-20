## Solution Guide: OSI Layers

The goal of this exercise was to practice identifying what types of activities, protocols, and devices exist at each OSI layer.   

Completing this activity required the following steps:

   - Reviewing each recent suspicious network-related event that occurred at Acme Corp.

   - Determining at which OSI layer each of the incidents occurred.

--- 

1. A networking cable was cut in the data center, and now no traffic can go out.

   **Solution:**  Physical cables that are cut or disconnected occur on Layer 1, the physical layer.

2. A code injection was submitted from an administrative website, and it's possible that an attacker can now see unauthorized directories from your Linux server.

   **Solution:**  Attacks that occur directly on the web application occur on Layer 7, the application layer.

3. The MAC address of one of your network interface cards was spoofed and is preventing some traffic from reaching its destination.

   **Solution:**   Issues or attacks on the MAC address occur on Layer 2, the data link layer.

4. Your encrypted web traffic is using a weak encryption cipher, and the web traffic is now vulnerable to decryption.

   **Solution:**  Encryption occurs on Layer 6, the presentation layer. 

5. The destination IP address was modified, and traffic is being routed to an unauthorized location.

   **Solution:** IP addresses and IP address routing occur on Layer 3, the network layer.

6. A flood of TCP requests is causing performance issues.

   **Solution:** TCP and source and destination protocols occur on Layer 4, the transport layer.

7. A SQL injection attack was detected by the SOC. This SQL injection may have deleted several database tables.

   **Solution:** Attacks occurring on the web application occur on Layer 7, the application layer.

8. A switch suddenly stopped working, and local machines aren't receiving any traffic.

   **Solution:** Switches use MAC addresses to route traffic, so this problem occured on Layer 2, the data link layer. 

9. An ethernet cable was disconnected, and the machine connected isn't able to receive any external traffic.

   **Solution:** Physical cables that are cut or disconnected occur on Layer 1, the physical layer.

10. Traffic within the network is being directed from the switch to a suspicious device.

    **Solution:** Switches use MAC addresses to route traffic, so this problem occured on Layer 2, the data link layer. 

--- 
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
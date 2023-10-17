## Solution Guide: Geographic Map Visualization 

In this activity, you designed a geographic map using the `iplocation` and `geostats` commands.

---

1. Design a geographic map that displays a visualization of source IP address locations. 
   - `source="radialgauge.csv" http_method=POST| iplocation src_ip | geostats count`

   - In the Visualization tab, select the cluster map visualization type.  

2. Save the visualization as a report titled "Geographic Map &ndash; POST request monitor by Source IP."

**Bonus** 

Modify the search to display the URIs attacked in the same map: 

  - `source="radialgauge.csv" http_method=POST| iplocation src_ip | geostats count by uri_path`  
 
---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.  

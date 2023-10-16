## Activity File: Geographic Map Visualization 

- OMP would like you to expand the visualizations to provide more geographic information on the attacks.  

- The security team can use this information to create firewall rules that restrict traffic from certain geographic locations.

- Design a geographic map visualization to help the SOC team understand where attacks originated.

### Instructions

1. Design a geographic map that displays a visualization of source IP address locations. Use the following fields:

    - `source="radialgauge.csv"`
    - `http_method=POST`

    **Hint:** Add `iplocation` and `geostats` to the query.
 
2. Save the visualization as a report titled "Geographic Map &ndash; POST request monitor by Source IP."   
  
#### Bonus
  
Modify the search to display the URIs attacked in the same map.
  
  - **Hint:** Research how to modify the `geostats` command.

---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.  

## Activity File: Single-value Visualizations

This week, you'll continue to play the role of SOC manager at Omni Medical Products (OMP). 

- The networking team notified you about performance issues that OMP's public-facing website experienced over the weekend.

- The team discovered that these issues were caused by an attacker flooding the web server with POST requests.

- As the SOC manager, you would like to build visualizations that your SOC team can use to determine the severity of the attack. These visualizations will help your team respond to attacks quickly and accurately.

- Your networking team provides a log file of two hours of normal activity to analyze.

- Design a single-value radial gauge to assist with monitoring attacks against OMP's website.




### Instructions

1. Upload the `radialgauge.csv` file to your local Splunk system located in the splunk/logs/Week-2-Day-1-Logs directory. Select all defaults during the upload process.


2. In Splunk, design a search to view the POST events for the time range of "All TIME," using the following fields:
    - `source="radialgauge.csv"`
    - `http_method=POST`
    - `stats count as total`
  
3. Design a radial gauge to visualize the data. 

   - Your networking team received approximately 1,200 POST requests during a 2-hour period of the attack. 

   -   Design a radial gauge with the following criteria:
   
       - Count of total POST requests

       - Three different color settings: green, yellow, and red.
         - Select the appropriate ranges for each color setting using your best judgment.
         - *Hint: The logs you have loaded are considered normal activity.*
       
4.  Save your visualization as a report titled "Radial Gauge &ndash; POST request monitor."            
       
#### Bonus

Design an alert to trigger when the count reaches the red range.

---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.  

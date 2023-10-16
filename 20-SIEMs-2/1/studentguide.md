## 20.1 Student Guide: Splunk Dashboards and Visualizations

### Overview

In today's class, you'll create dashboards that display useful visualizations of Splunk searches.  

### Class Objectives

By the end of class, you will be able to:

- Create visualizations of single- and multiple-value searches. 

- Use the `geostats` and `iplocation` commands to add location-based visualizations to searches. 

- Combine multiple visualizations in a single dashboard. 

- Modify dashboards with time range input and drilldown capabilities.

### Lab Environment

This class uses the Splunk instance inside the Ubuntu VM.

- To launch, move into the `/splunk` directory and run the following script: 

  - `sudo ./splunk.sh`
  
  - On the first time running, select option 1.
  - All subsequent times, select option 2.

- Once the script completes, pull up the web browser in the Ubuntu VM and enter the following URL: 

  - `localhost:8000/`

- On the Splunk login page, use the following credentials:
    - User: `admin`
    - Password: `cybersecurity`
  
- The logs for each lesson and activity are located in the `/splunk/logs` directory. 

### Slideshow

The class slides are available on Google Drive here: [20.1 Slides](https://docs.google.com/presentation/d/1c3GHz3w_texfTZBhD06cYt3tavzhCBgr9v2r49GpnbY/)

-------

### 01. Welcome Back and Module Recap

Today, you'll learn how security professionals use Splunk's visualization capabilities to identify and mitigate security issues.

Let's review what was covered in the last class:

- Splunk uses the Statistics feature to display specific values from search results in an easy-to-read spreadsheet.

- The `eval` command is used to design new fields or modify existing fields.

- Splunk uses reports to save searches and run them at designated times.

- Splunk alerts are designed to send automatic notifications when a specific condition, known as a trigger condition, is met.

- Designing poor alerts can cause two types of issues: false positives and false negatives.

  - False positives occur when conditions are met and an alert is triggered, but the security situation being monitored did not actually occur.

  - False negatives occur when the condition is met and an alert is not triggered, meaning the security situation occurred undetected.
  
- Baselining is a method of looking at historical data to determine how much activity is considered "normal."

- Security professionals use baselining to determine a threshold.

  - A threshold is the condition or level that, when met, triggers an alert.

- Security professionals may encounter the challenge of alert fatigue. This occurs when they receive so many alerts that they cannot adequately respond to each one.

### 02. Introduction to Visualizations

Previous classes showed how to visualize statistics with charts. Today, you'll expand the Splunk capabilities to include adding more contextualized and informative visuals. They contribute to the analysis and research of system and security issues. 

- For example, the table shows the the number of logins into a web application per minute:
  
  ![Table showing the number of logins per minute.](images/viz1.jpg)

- The gauge visualization contextualizes that number by including the severity of the login count:
  
  ![A guage visualization with the number of logins marked.](images/viz2.jpg)
      
Splunk uses visualizations to make complex data easier to understand and analyze:

- Splunk visualizations allow interactivity and offer more in-depth details.

- These visualizations range from simple bar and column charts to more complex horizon charts and punch cards. 

Splunk visualizations can display single values, such as total number of attacks, and multiple values, such as a chart of attacks correlated by attack type. 
  
#### Single-value Visualization Walkthrough

The following demonstration uses a radial gauge visualization.

- **Radial gauges** are similar to the RPM dial found in a car dashboard. 

  - RPM (revolutions per minute) is a single value visualized in the dial.

  -  The dial includes a red section that indicates when the level is too high.
 
This demonstration uses event data from a Fortinet firewall attack log to create a radial gauge measuring the Oracle.9i.TNS.OneByte.DoS attack over a one-hour period. 

1. Log into Splunk and open the Search & Reporting app.

2. Load the following Splunk file: fortinet_IPS_logs.csv

3. Create the search value and enter the following search:

    - `source="fortinet_IPS_logs.csv"   attack_name="Oracle.9i.TNS.OneByte.DoS"`
    
    Specify a one-minute period by double-clicking the bar representing data from 4:24pm (or another time of your choice).

    - While this one-minute period is an example, a real SOC would make their own determination of which time period to monitor. This depends on their own environment and the attacks they have seen in the past.

    ![Search page in Splunk.](images/splunknew1.png)
    
4. Turn this minute count into a single value by piping the SPL search into a `stats count as total` field:

   - Add `| stats count as total` to the end of the search and run the search again. 

   - Make sure the search spans the past one minute.

  ![Search terms in Splunk.](images/splunknew2.png)

   **Note:** Your results may vary.

5. Next, turn this single value into a radial gauge. 

   - Select **Visualization** and then the **Radial Gauge** option.

   ![Visualization menu in Splunk.](images/splunknew3.png)

   - Splunk created the different color values in this radial gauge were created by default:
      - Green: 0&ndash;30
      - Yellow: 30&ndash;70
      - Red: 70&ndash;100

6. Customize these ranges and colors based on your needs and preferences.
 
    - To edit, select **Format** > **Color Ranges** > **Manual**.

     ![Format menu in Splunk.](images/splunknew4.png)

   - In this example, the value of that minute is 10 events, which can be considered the top of a normal level.

   - Change the ranges to:
      - Green: 0&ndash;10
      - Yellow: 10&ndash;20
      - Red: 20&ndash;30
  
      ![Color ranges menu in Splunk.](images/splunknew5.png)
  
7. Now the radial gauge displays the 10 events at the top of the green range.

    - Save this radial gauge by selecting **Save As** >  **Report** > **Choose a Title**.

    - Select the radial gauge icon under **Content**.
  
     ![Radial gauge option in the Report dialog box.](images/viz8.jpg)
   

### 03. Activity: Single-value Visualizations

- [Activity File: Single-value Visualizations](activities/03-Single-Value-Visualization/Unsolved/README.md)


### 04. Activity Review: Single-value Visualizations

  - [Solution Guide: Single-value Visualizations](activities/03-Single-Value-Visualization/Solved/README.md)
  

### 05. Multiple-value Visualizations

We just created a visualization with a single value. Now, we'll use visualizations to display multiple values. 

One scenario in which multiple value visualizations are useful, is when a business experiences brute force attacks against a web application and wants to visualize the list of users being attacked and the number of attacks experienced by each user.
  
These statistics will still display in a spreadsheet:

![Table of number of attacks per user.](images/viz9.jpg)
  
However, these spreadsheets can be converted into simple and interactive visualizations:

- For example, the data found in the spreadsheet can be displayed in a column chart.

  ![Column chart of number of attacks per user.](images/viz10.jpg)


- Note the interactivity: When the mouse is hovered over a bar, the number of attacks experienced by this user is displayed. 

  ![Number of attacks displayed for a user.](images/viz11.jpg)
  
#### Multiple-value Visualizations Walkthrough
In this demonstration, we'll use event data from Windows event logs to create a pie chart of top user logins. 

 - Load the following Splunk file: demo_winlogs.csv
  
1. Run the following search:  

   - `source="demo_winlogs.csv" subject="An account was successfully logged on"`
   
   - **Note:** Your values and counts may differ from the screenshots.
 
   ![Splunk search page.](images/mult1.jpg)


2. Create a report of the top values. 

    - Click the **User** field and select **Top values**. 

   ![User selection in Splunk.](images/mult2.jpg)
 
3.  Modify the top value to display the top 10 values.
    -  Click **Search** to update the results.
 
      ![Search field in Splunk.](images/mult3.jpg)
 
4. Under **Visualization**, select the pie chart icon under the **Bar Chart** heading.
 
    ![Bar Chart menu in Splunk.](images/mult4.jpg)
   
   - The top 10 users with login data are displayed as a pie chart.  
 
    ![Pie chart of top 10 users.](images/mult5.jpg)
  
5.  Note the interactivity when moving your mouse over any piece of the pie. 
  
     - It shows the specific count and percentage of a user.
  
     ![Number and percentage shown of a specific user.](images/mult6.jpg)
   
6. Save the pie chart by selecting **Save As** > **Report** > **Choose a Title**.

    - Select the pie chart icon under **Content**.
  

### 06. Activity: Multiple-value Visualization


- [Activity File: Multiple-value Visualization](activities/06-Multiple-Value-Visualization/Unsolved/README.md)


### 07. Activity Review: Multiple-value Visualization

- [Solution Guide: Multiple-value Visualization](activities/06-Multiple-Value-Visualization/Solved/README.md)

### 08. Geographic Map Visualizations

We can use visualizations to gain further insight into data, such as where in the world an attack or activity originated.

  - Organizations can monitor where users access the application from to determine the source of security issues.

  - For example, a business's application customers are primarily located in the United States. If the business is notified that a significant number of users have started accessing the application from another place in the world, it is as a cue to investigate the activity.
  
Splunk can create location-specific reports with the `iplocation` and `geostats` commands. 


#### Geographic Map Visualization Walkthrough

Load the following file: `demo_httplogs.csv`

1. Run the following SPL command in the Search & Reporting app:
    - `source="demo_httplogs.csv"`
  
   - This log shows HTTP activity.

2. Identify the field containing IP addresses. This is used to determine the location. 
  
   - Use the source IP address, indicated by the field `src_ip`.
      - You can also use the destination IP (`dest_ip`).
  
   - To determine the location data of the IP, run the following SPL command:
     - `sourcetype="stream:http" | iplocation src_ip`
  
   - The `iplocation` command outputs the city and country data of the `src_ip` field.
  
   - **Note:** To get the city and country results, you may have to select these fields from the **more fields** option below the field list.

      ![More fields option in Splunk.](images/map1.jpg)

3. Search for the **City** and **Country** fields. 

    - Check the box to add the fields.

       ![Location field options in Splunk.](images/map2.jpg)

    - The city and country should now appear on the **Selected Fields** list.

       ![List of Selected Fields options in Splunk.](images/map3.jpg)

   - Click on the **Country** field to list the countries found based on the source IP address.

The `geostats` command uses the location data found with the `iplocation` command to map latitude and longitude data for each event.
  
1. Use the `geostats` command by running the following search: 

    - `source="demo_httplogs.csv" | iplocation src_ip | geostats count`  
  
2. Next, go to the **Visualization** tab. 
   
   - Splunk has recommended a visualization called **Cluster Map** based on your search. 
   
  
      ![Cluster Map menu in Splunk.](images/map4.jpg)  

   - Select the cluster map icon. This tool places the search results on a geographic map.

     ![Geographic map with cities highlighted that showed up in the search results.](images/map5.jpg)  


3. Hover over the circles to see the interactivity that displays the latitude, longitude, and count of each circle.

   - The size of each circle indicates the number of events in that city.

     ![A specific circle shows the number of attacks for that city as a bigger circle than other cities.](images/map6.jpg)  

   - Use the **+** and **-** buttons on the left of the map to zoom in and out.

     ![Zoom menu on a geographic map.](images/map7.jpg)  

In summary, geographic maps in Splunk are powerful visualizations that help security teams quickly understand where activity came from.

### 09. Activity: Geographic Map Visualization

- [Activity File: Geographic Map Visualization](activities/09-Maps/Unsolved/README.md)

### 10. Activity Review: Geographic Map Visualization

- [Solution Guide: Geographic Map Visualization](activities/09-Maps/Solved/README.md)

### 11. Break

### 12. Introduction to Dashboards

So far, we've covered the following visualizations. 
 - Single value
 - Multiple values
 - Geographic maps
 
While each visualization is useful on its own, they are even more effective when grouped and displayed together. 

For example, an organization that is monitoring a website may want to view all of the following at the same time:

 - The volume of successful and unsuccessful logins on the website
  - A geographic map of the sources of activity
  - A pie chart of the specific website pages accessed
    
Viewing all this information together can provide a security analyst a complete picture of the state of their web application, using a Splunk tool called dashboards.

- **Dashboards** are a collection of multiple visualizations in a single location.

- The visualizations are placed in different sections, called **panels**.

- Panels can contain:
  - Single-value visualizations
  - Multiple-value visualizations
  - Geographic maps
  - Statistical charts


- The SOC team often has dashboards displayed on multiple screens in its operations room to provide availability and functionality across the staff.
   
   ![Display of dashboard monitors.](images/dashboard1.jpg)
     
#### Creating Dashboards Demonstration

Create a dashboard using the following scenario:

 - As a SOC manager, you would like to create a single three-panel dashboard to monitor your Windows server. You want the panels to include:

   - A radial gauge of successful logins
   - A pie chart of users logging in
   - A statistical chart of the data in the pie chart


**Note:** Use a log file for this demonstration that has already been used: `demo_winlogs.csv`
  - There is no need to reload this file.

Go through the process of creating each visualization, starting with the radial gauge.

1. Add the radial gauge with the following search: 
   - `source="demo_winlogs.csv"  signature="An account was successfully logged on" | stats count as total`

    - Design and format the radial gauge visualization as needed.

3. To add this radial gauge to a dashboard, select **Save As** >  **Dashboard Panel**.

   ![Dashboard Panel selection.](images/dashboard2.jpg)

4. Since you haven't created the dashboard yet, select the **New** dashboard option.
   - Name the dashboard "Windows Monitoring Dashboard."
  
    ![Dialog box to create a new dashboard.](images/dashboard3.jpg)
  
   - Name the panel "Windows Login Count."

   - Select **Radial Gauge** under **Panel Content**.
  
    ![Save as Dashboard Panel dialog box.](images/dashboard4.jpg)
  
   - Select **Save**.

5. Confirm that the dashboard has been created by selecting **View Dashboard**.
      - This dashboard has only one panel. Let's add the next panel. 

    ![View Dashboard button.](images/dashboard5.jpg)
  
  

    ![Radial guage example.](images/dashboard6.jpg)
  
6. Next, add the pie chart. 

    - Return to the Search & Reporting app and add the following search:
      - `source="demo_winlogs.csv"| top limit=10 user`
  
    Select the pie chart as the visualization. Then select **Save As** > **Dashboard Panel** again.
    
7. Since you already created the dashboard, you just need to add the new visualization to it.

   - Select **Existing** > **Windows Monitoring Dashboard**.

    ![Dialog box to select an existing dashboard.](images/dashboard7.jpg)

   - Title the dashboard panel "Top 10 Windows Users."

   - Select **Save** > **View Dashboard**.

   - Now the dashboard has multiple visualizations.

    ![Radial guage and pie chart.](images/dashboard8.jpg)

8. Dashboards can be edited by selecting **Edit**.
   - Rearrange panels by  dragging the panel to a new location on the dashboard.

   ![Edit button on the radial guage visualization.](images/dashboard9.jpg)


   ![Highlighted point from which to drag a visualization.](images/dashboard10.jpg)

   - Select **Save** to save your changes to the dashboard.

9. The last step is to add the third panel to the dashboard.
     - Add the search:
       - `source="demo_winlogs.csv"| top limit=10 user`
    - Follow the same steps for adding this to the dashboard.
    - The completed dashboard should look like the following: 
    
      ![Complete visualizations.](images/dashboard11.jpg)


### 13. Activity: Creating Dashboards

- [Activity File: Creating Dashboards](activities/13-Dashboard/Unsolved/README.md)


### 14. Activity Review: Creating Dashboards

- [Solution Guide: Creating Dashboards](activities/13-Dashboard/Solved/README.md)
  
### 15. Drilldowns and Dashboard Interactivity

Similar to many other applications in Splunk, dashboards have advanced features that help information security professionals research security issues. 

These include:
  - Direct input modifications within dashboards
  - Drilldowns within panels for further analysis

Configure these features by using the dashboard and scenario from the preceding section:

  - As a SOC manager, you created a three-panel dashboard to monitor your Windows server.

  - Now expand the functionality of this dashboard by:
    - Modifying the date and time ranges being analyzed directly on the dashboard

    - Adding a drilldown into the visualizations to assist with further analysis
    
#### Time Input Walkthrough
 
First, configure the dashboard to modify the date and time range.
 
1. Open the dashboard created in the preceding demonstration:
    - Select **Dashboards** > **Windows Monitoring Dashboard**.
   
    ![Windows Monitoring Dashboard.](images/dashboard11.jpg)
 
2. Select **Edit** to modify the dashboard.
   
   - Select **Add Input**, then select **Time**.

   - You can modify many features in the dashboard. Today, we'll only cover the Time feature.
   
   ![Time option in Add Input list.](images/dashboard13.jpg)
   
3. The top of the dashboard should now show a field where you can input time.
 
   - This feature modifies the time range of data displayed in each panel.

     ![Time range selection in Add Input field.](images/dashboard14.jpg)
 
   
4. For the panels to work with this new feature, reconfigure some settings for each panel.
   
   - To modify the first panel, select the magnifying glass icon to edit the search for the radial gauge.
 
     ![Magnifying glass icon on radial guage.](images/dashboard15.jpg)
 
   - Select **Shared Time Picker**.
     - This is the input just created.

   - Select **Apply**.
   
   ![Shared Time Picker option.](images/dashboard16.jpg)
 
   - Repeat these steps for the other two panels.
 
   - Select **Save** to save the whole dashboard.
 
- There is now a working input on the dashboard where you can quickly change the time range of each panel.
 
  ![Time range input field on the dashboard.](images/dashboard17.jpg)
   
#### Drilldown Walkthrough
 
Next, add a **drilldown** to help research specific data from a panel. 

A drilldown is similar to a dropdown menu and has a variety of functions. 
 
1. Select the **Edit** option to modify the dashboard.
  
2. On the pie chart, select the three vertical dots for more actions, then select **Edit Drilldowns**.

    - Select **Link to search** in the dropdown.
    - Keep **Auto** selected.
    - Click **Apply**.

   ![Edit Drilldown option.](images/dashboard18.jpg)

   ![Drilldown Editor dialog box.](images/dashboard19.jpg)  

   - Save the dashboard. 
  
3. You now have the ability to search for a specific piece of the pie chart.

   - Select one of the pie chart pieces. 

   ![One of the pieces of the pie chart highlighted.](images/dashboard20.jpg) 

    - This creates a search based on what was selected.

   ![New search field.](images/dashboard21.jpg) 

This drilldown feature allows an SOC analyst to quickly analyze data directly from the dashboard.



### 16. Activity: Advanced Dashboards

- [Activity File: Advanced Dashboards](activities/16-Advanced-Dashboards/Unsolved/README.md)


### 17. Activity Review: Advanced Dashboards

- [Solution Guide: Advanced Dashboards](activities/16-Advanced-Dashboards/Solved/README.md)

  
---

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.  

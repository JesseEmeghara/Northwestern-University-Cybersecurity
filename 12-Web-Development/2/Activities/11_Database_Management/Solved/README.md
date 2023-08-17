## Solution Guide: Database Management

In this activity, you deployed a container set and managed the database. 

---

1. First, deploy the container set using Docker Compose:

    - `cd /home/sysadmin/Cybersecurity-Lesson-Plans/12-Web_Dev/deploying_databases` directory. 

    - Run `docker-compose up`.

    - Open Firefox and go to `http://127.0.0.1:10005` in the browser.

2. Find the MySQL credentials in the `/home/sysadmin/Cybersecurity-Lesson-Plans/12-Web_Dev/deploying_databases` compose file.

    - We can check the file with `cat /home/sysadmin/Cybersecurity-Lesson-Plans/12-Web_Dev/deploying_databases/docker-compose.yml`.

    - Use the credentials in the `docker-compose.yml` file:

      ```YAML
      MYSQL_USER: admin
      MYSQL_PASSWORD: 123456
      ```

3. Enter an interactive bash session in the database's container. The container name can also be found in the compose file:

    - Run `docker exec -it activitydb bash` to enter an interactive bash session in the MySQL container.

4. Within the interactive bash session, use the credentials found earlier to enter a MySQL session using the `goodcorpdb` MySQL database.

    - Enter `mysql -u admin -p123456 -D goodcorpdb` to enter a MySQL session.

5. Create a basic `SELECT` query to find all the employee table entries in the `goodcorpdb` database.

    - While in the MySQL session, enter `SELECT * FROM employees;` to retrieve all the entries in the employee table.

6. Using the given information, add the following new user to the employee directory:

    - **First name**: Fran
    - **Last name**: Frappucino
    - **Email address**: ffrappucino@goodcorp.net
    - **Department**: Finance

     Enter the following query to add the new employee:

   ```SQL
    INSERT INTO employees (firstname, lastname, email, department)  
    VALUES ('Fran', 'Frappucino', 'ffrappucino@goodcorp.net', 'Finance');
    ```

    - Reload the webpage to see the changes.

7. Create a modified `SELECT` query to find all employees in the Research and Development department.

    - While still in the database, run the following query to see all the employees in the Research and Development department:

      `SELECT * FROM employees WHERE Department = 'Research and Development';`

8. Create a `DELETE` query to remove the entry for Bob:

    - Run the following query to remove Bob via their `Id`:

       `DELETE FROM employees where Id='1';`

    - Then re-run the `SELECT *` query to see the new `employees` table:

       `SELECT * FROM employees;`

    - Lastly, refresh the webpage to see that the entry for Bob has been deleted.

    Why should we not just delete the user by the first name Bob?

    - Because there may be tens or hundreds of entries in a database that include the first name Bob.

      Every database requires a unique identifier for each entry. In our case, it's `Id`.

**Note:** Don't forget to Ctrl+C the container set output and run `docker-compose down` when done.

---

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.

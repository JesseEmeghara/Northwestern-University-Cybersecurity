## Solution Guide: Users, Groups, and Password Policies

In this activity, you used the `net` tool to find information about user groups and password policies, and append them to your report.

#### Solutions

Start by using `cd` to return to the `Desktop/reports` directory.

1.  Enumerate users with `net`:

    - Run `net user >> report.txt`.

2. Find `Alex`'s password status:

    - Run `net user Alex >> report.txt`.

3. Find groups on the machine:

    - Run `net localgroup >> report.txt`.

4. Find the current password policy:

    - Run `net accounts >> report.txt`.

5. Run `type report.txt` to see the updated report.

----

© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.

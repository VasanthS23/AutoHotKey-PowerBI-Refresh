# AutoHotKey-PowerBI-Refresh

This script is developed using AutoHotKey(AHK) which is a scripting language used to automate repetetive tasks in Windows applications.

Problem: In a Power Bi online report, there are limitations for the refreshing of the report using the "Scheduled Refresh" feature. However, a user can always manually click the refresh button on the report page whenever he tries to view the report. This task, even though looks simple, will seem mundane to any user at a point of time.

Solution:I have automated the clicking of refresh button in the Power BI online report page using AHK. This script mimics the entire process as done by a user manually due to which there are no limitations. Also, the script can be scheduled to run in regular intervals so that a user always views the latest report.

Note: The only change in the script would be to modify the URL of the Power BI page in the "wb.Navigate" statement.


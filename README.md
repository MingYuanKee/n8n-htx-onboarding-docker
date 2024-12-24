# n8n-htx-onboarding-docker

Please clone this repository.<br><br>

Run the below script to start n8n in Docker (the first 2 lines below is to point the directory to where the files are stored in your local from the cloning of this repo):<br>
cd .ssh<br>
cd htx-onboardingsystem<br>
docker compose up -d<br>

Go to http://localhost:5678 and sign into n8n

Click 'Start from scratch':
![image](https://github.com/user-attachments/assets/50201c73-0a2c-42c9-98a0-fc4d83b60abe)
<br><br>
Click 'Import from file':
![image](https://github.com/user-attachments/assets/6c8844e9-569e-4c6a-921b-8904d2cc5d34)
<br><br>
Click the workflow to import:
![image](https://github.com/user-attachments/assets/bda92b75-1c13-4440-ae85-8d5de406dd14)
<br><br>
Click into Airtable and click into '- Create New Credential -':
![image](https://github.com/user-attachments/assets/179016e9-123b-4256-ae66-28bfd75fbc4b)
<br><br>
Open the 'environmentVariable.env' and paste the AIRTABLE_API_TOKEN in it:
![image](https://github.com/user-attachments/assets/49e9380e-2fa8-4569-9a9f-a062f63dc9ab)
<br><br>
Click 'save':
![image](https://github.com/user-attachments/assets/3eb7be6d-307f-442c-abf3-3de7eb47f47b)
<br><br>
After clicking 'Save', you should see that the connection is established successfully:
![image](https://github.com/user-attachments/assets/d13c3cdf-55b1-4911-92d5-cf92122ada51)
<br><br>
Click 'Back to Canvas':
![image](https://github.com/user-attachments/assets/1c1395d0-43ac-4cd8-94bb-4e4d0bb10811)
<br><br>
Click into 1 of the 3 'Todoist', input the 'TODOLIST_API_KEY' in 'environmentVariable.env' as the API Key:
![image](https://github.com/user-attachments/assets/bd49667e-b032-47dc-9f7b-4f4c42e69208)
<br><br>
After clicking 'Save', you should see that the connection is established successfully:
![image](https://github.com/user-attachments/assets/ae350ddb-c4f8-4d60-8479-68ed3046be34)
<br><br>
Click into the remaining 2 Todoist tiles:
![image](https://github.com/user-attachments/assets/cf6e7be6-c5dc-415c-8798-2352144a3740)
<br><br>
Select the credential which was already created just now:
![image](https://github.com/user-attachments/assets/e07cadb2-7716-4677-b2a6-9788ffd26576)
<br><br>
To test the workflow if it working, double click into the 'On form submission':
![image](https://github.com/user-attachments/assets/65a418f2-40fe-4e72-99e0-9634ba517b12)
<br><br>
You can click the 'Test URL' or the 'Production URL' but either one will generate data in my Airtable and Todoist. Click 'Test step':
![image](https://github.com/user-attachments/assets/a143f4c3-e86d-40cd-9477-f9bdf070791c)
<br><br>
You should see a form appearing, if you did not, type 'control+shift+R' to clear cache and refresh, then click 'Test step' again:
![image](https://github.com/user-attachments/assets/412b135e-d1f8-4d02-8c79-395adbc62b6f)
<br><br>
Fill in the form and email me to get me to check if the employee record and tasks are created in my Airtable and Todoist.













# n8n-htx-onboarding-docker
In this project, I have created a form for users to key in the new employee's detail, where upon submitting the form, the new employee's account record will be created in the Airtable database. After that, there will 3 tasks created in the Todoist app as per the 'New employee issues (laptop, staff pass, welcome goody bag)' stated in the PDF. <br><br>
Do note that in the below steps, I will be guiding you to key in the credentials to the external apps that I am integrating to such as Airtable and the Todoist where the new employee record will be created in the Airtable under my account and the tasks will be created in the Todoist app under my account. To test if the workflow is working, you can do the steps as shown below and fill in the form and email me to get me to check if the employee record and tasks are created in my Airtable and Todoist account.<br><br>
If you would like the records to be created in your Airtable account and your Todoist account, you can email me to let me know and I can send the steps as to where one can get the access token to your Airtable and Todoist account.
<br><br>
As part of the Error Handling, an error workflow will run if there are any failure in the new employee workflow, to send an email from a gmail account containing the error log to the designated email address. The error workflow is integrated with gmail.
<br><br>
As n8n is an app, no doubt the workflows I created can be imported to n8n, the credentials set up for linking to external apps such as Airtable, Todoist and Gmail might be time consuming. If you would like to directly test submitting the form and emailing me to check if the employee record is created in my Airtable and if the tasks records are created in my Todoist, you can go to this link where I have the form hosted on a Cloud via Render: https://github.com/MingYuanKee/n8n-htx-onboarding <br><br>
Do note that for both the steps below and the form which was hosted on the Cloud, the both use the same Airtable, Todoist and Gmail account by me. This would mean that if you test using the form link in the Cloud or you got the n8n working in your local, the employee record and task record will be created in the same place. 
<br><br>
<br><br>
# Steps:
Please clone this repository.<br><br>
Run the below script to start n8n in Docker (the first 2 lines below is to point the directory to where the files are stored in your local from the cloning of this repo):<br>
cd .ssh<br>
cd htx-onboardingsystem<br>
docker compose up -d<br>

Go to http://localhost:5678 and sign into n8n

Click 'Start from scratch':
![image](https://github.com/user-attachments/assets/50201c73-0a2c-42c9-98a0-fc4d83b60abe)
<br><br>
Click 'Import from File':
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
Click 'Save':
![image](https://github.com/user-attachments/assets/3eb7be6d-307f-442c-abf3-3de7eb47f47b)
<br><br>
After clicking 'Save', you should see that the connection is established successfully:
![image](https://github.com/user-attachments/assets/d13c3cdf-55b1-4911-92d5-cf92122ada51)
<br><br>
Click 'Back to Canvas':
<img width="995" alt="image" src="https://github.com/user-attachments/assets/e7f062c7-00e9-451f-a861-3edaba925b9e" />
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
Click 'Save' at the top right (very important). To test the workflow if it working, double click into the 'On form submission':
<img width="959" alt="image" src="https://github.com/user-attachments/assets/9e7d65d5-3c00-4840-9d70-5f8f9cb3e621" />
<br><br>
You can click the 'Test URL' or the 'Production URL' but either one will generate data in my Airtable and Todoist. Click 'Test step':
![image](https://github.com/user-attachments/assets/a143f4c3-e86d-40cd-9477-f9bdf070791c)
<br><br>
You should see a form appearing, if you did not, type 'control+shift+R' to clear cache and refresh, then click 'Test step' again:
![image](https://github.com/user-attachments/assets/412b135e-d1f8-4d02-8c79-395adbc62b6f)
<br><br>
Fill in the form and email me to get me to check if the employee record and tasks are created in my Airtable and Todoist.
<br><br>
# Error handling
Click 'Save' on the top right:
<img width="959" alt="image" src="https://github.com/user-attachments/assets/87699339-19cf-47b7-89e0-2384b0224ddb" />
<br><br>
Click '+' and 'Workflow' on the top left:
![image](https://github.com/user-attachments/assets/19b16af0-ed87-4884-901c-e1b9efa84851)
<br><br>
Import the Error Workflow:
![image](https://github.com/user-attachments/assets/db9d0c07-e57c-4118-9358-7818ad8fa06e)
<br><br>
Click into the Gmail tile and input the credentials as per the GMAIL_CLIENT_ID and GMAIL_CLIENT_SECRET from 'environmentVariable.env':
![image](https://github.com/user-attachments/assets/97b75414-390a-48d9-a36a-0f0cf505804f)
<br><br>
After clicking 'Save', you should see that the connection is established successfully:
![image](https://github.com/user-attachments/assets/1807bd5c-fd68-4c46-83b0-5362314f553d)
<br><br>
Click 'Sign in with Google' and select 'Genericrandom88@gmail.com':
<img width="959" alt="image" src="https://github.com/user-attachments/assets/efeaffef-0490-422a-b09f-66632b4bb082" />
<br><br>
Click 'Advanced' and click the blue underlined:
<img width="959" alt="image" src="https://github.com/user-attachments/assets/335a0716-79e3-47e9-87b0-399cc485120e" />
Click 'Select all':
<img width="959" alt="image" src="https://github.com/user-attachments/assets/77cb3575-58cd-4d55-b6ea-e0444dc353fc" />
![image](https://github.com/user-attachments/assets/bffc74be-ff34-49e3-9f13-e8df66a57db7)
![image](https://github.com/user-attachments/assets/f4dbecae-f583-4812-a44a-82d95a446166)
<br><br>
Click 'Save' (very important) and then click 'Test workflow' and email me with the timestamp to get me to check if I received an email of the error logs:
<img width="959" alt="image" src="https://github.com/user-attachments/assets/58068691-ecb5-420e-b61d-2c99816f5a4e" />
![image](https://github.com/user-attachments/assets/0733cf80-27bd-4ee2-8a05-364ec09af39c)
<br><br>
Go to 'Overview':
<img width="959" alt="image" src="https://github.com/user-attachments/assets/87fdb37b-f745-4f07-a87f-37bc24f24065" />
<br><br>
Click into the first workflow:
<img width="959" alt="image" src="https://github.com/user-attachments/assets/f633401c-ca4f-484e-b574-1e0f77672ac2" />
<br><br>
Click 'Settings':
![image](https://github.com/user-attachments/assets/1a60bce4-6d0e-47d4-b2c2-b290e1ca94c3)
<br><br>
Select the error workflow as 'My workflow 2':
![image](https://github.com/user-attachments/assets/3ac6d76e-331f-4c2f-b73b-007a43ca573d)
<br><br>
Change the timezone:
<img width="959" alt="image" src="https://github.com/user-attachments/assets/bd0db9fe-4090-4700-95c7-b6d05a9ff621" />
<br><br>
Activate the workflow:
<img width="959" alt="image" src="https://github.com/user-attachments/assets/29037d5b-b91b-4928-aee7-4dd8113f804e" />










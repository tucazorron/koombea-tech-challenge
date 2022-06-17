# Koombea Tech Challenge

## Developed by

Artur Zorron

## Description

System to upload and analyse CSV files with contacts data.

## User stories

---

1. As a user, I must be able to log into the system using an email and a password.

- With your account created, you can log in to the system.

- Route: 

---

2. As a user, I must be able to register on the platform. For this, it will only be necessary to enter a username and password.

---

3. As a user, I must be able to upload a CSV file for processing. At the time of uploading the file, the user must choose which column belongs to which specific contact information, i.e. the user must match the columns of the file with the information to be processed and then save it into the database. This means that in the CSVs the columns with information will not be standard and may arrive in a different order or with different names than the ones that will be used in the database.

---

4. The following values must be saved in the database:
    - Name
    - Date of Birth
    - Phone
    - Address
    - Credit Card
    - Credit Card Network
    - Email

---

5. As a system, I must process the content of the CSV file.

---

6. As a user, I should be able to see a summary of the contacts I have imported. All contacts that I have imported and that were successfully created should be displayed in a list that is paginated.

---

7. As a user, I should be able to see a log of the contacts that could not be imported and the error associated with it.

---

8. As a user, I should be able to see a list of imported files with their respective status. Valid statuses include: On Hold, Processing, Failed, Terminated.

---

9. BONUS: Process the CSV file in a background job.

---
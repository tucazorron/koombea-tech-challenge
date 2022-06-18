# Koombea Tech Challenge

## Developed by

Artur Zorron

## To run

- Run `rails s` in the terminal
- Use Postman or Insomnia to test the API

## User stories

### As a user, I must be able to log into the system using an email and a password.

- Request:

```json
{
    "type": "request",
    "request": {
        "url": "http://localhost:3000/login",
        "method": "POST",
        "headers": {
            "Content-Type": "application/json"
        },
        "body": {
            "email": "artur.zorron@email.com",
            "password": "senha#123"
        }
    }
}
```

- Response:

```json
{
	"token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NTU1OTM0MTJ9.WaY_7rsGAr_KOlXXgTWn0gFlenCWQV7t580VdG8lvhw",
	"exp": "06-18-2022 20:03",
	"id": 1
}
```

### As a user, I must be able to register on the platform.

- Request:

```json
{
    "type": "request",
    "request": {
        "url": "http://localhost:3000/register",
        "method": "POST",
        "headers": {
            "Content-Type": "application/json"
        },
        "body": {
            "email": "artur.zorron@email.com",
            "password": "senha#123"
        }
    }
}
```

- Response:

```json
{
    "id": 1,
	"email": "artur.zorron@email.com",
	"password_digest": "$2a$12$BwNdb9qc1igmIYJKFHG6G.Wd0.1On.6QF2CFAzNNnn5Hfb.CngG1u",
	"created_at": "2022-06-18T00:04:12.204Z",
	"updated_at": "2022-06-18T00:04:12.204Z"
}
```

### As a user, I must be able to upload a CSV file for processing.

### As a system, I must process the content of the CSV file.

### As a user, I should be able to see a summary of the contacts I have imported.

### As a user, I should be able to see a log of the contacts that could not be imported and the error associated with it.

### As a user, I should be able to see a list of imported files with their respective status.

### BONUS: Process the CSV file in a background job.
This is a simple CRUD project for storing student details on database 

## Instructions

### To insert student data

```
 curl --location --request POST 'localhost:8080/api/students' \
--header 'Content-Type: application/json' \
--data-raw '{
    "id": id,
    "name" : "name",
    "branch": "branch",
    "email" : "email"
}’
```
### To get student data

```
curl --location --request GET 'localhost:8080/api/students/{id}'

curl --location --request GET 'localhost:8080/api/students/'
```

### To update student data

```
curl --location --request PUT 'localhost:8080/api/students/{id}' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name" : "name"
}’
```

### To delete student data

```
curl --location --request DELETE 'localhost:8080/api/students/{id}’

curl --location --request DELETE 'localhost:8080/api/students/’
```

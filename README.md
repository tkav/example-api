# API Example
Example REST API using Python (Flask), MongoDB and Docker.
Includes Postman tests and GitHub Action workflow.

Click here to read my blog on [Creating an API using Flask, MongoDB and Docker](https://blog.tkav.dev/create-an-api-using-flask-mongodb-and-docker)


[![Blog Post](docs/images/blog-post.jpg)](https://blog.tkav.dev/create-an-api-using-flask-mongodb-and-docker)

## Diagram

![API Example](docs/images/API-Example.drawio.png)

## Usage
To build and start the API, run:

```bash
make start
```

Go to http://localhost:5000. You should see a "Hello, World!" message.

## Endpoints

The API has the following endpoints available:
| Endpoint       | Method   | Description   |
|---             | ---      |---            |
| `/`            | GET      | Hello World   |
| `/items`       | GET      | Get All Items |
| `/items/{id}`  | GET      | Get Item      |
| `/items`       | POST     | Create Item   |
| `/items/{id}`  | PUT      | Update Item   |
| `/items/{id}`  | DELETE   | Delete Item   |

Data is created, read, updated and deleted from the MongoDB database. 

## Tests
Postman tests are included for the API endpoints in [tests/Example_API.postman_collection.json](tests/Example_API.postman_collection.json) and are run via GitHub Actions.

![Postman tests](docs/images/postman.png)

Tests can be run locally using:
```bash
make tests
```
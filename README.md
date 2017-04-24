# Rails Challenge

This project is intended to test basic skills in Rails framework and good practices in programming.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* Rails >= 5.0.2
* PostgreSQL >= 9.5.6 

### Installing

1. Clone the repository

```
git clone git@github.com:yaselc/rails-challenge.git
```

2. Set environment variables

```
$> cd rails-challenge
$> cp example.env .env
$> nano .env
```
And set all environment variables

3. Create database, run migrations and load initial data

```
$> bin/rake db:create
$> bin/rake db:migrate
$> bin/rake db:seed
```

4. Now you are set to run the server

```
$> bin/rails server
```

## Running the tests

```
$> bin/rake
```

### WebService1 and WebService2 documentation

You can check Swagger documentation for both webservice included in project. Also the source code to build a gem that serve as Client for this REST services

* [WebService1](https://app.swaggerhub.com/apis/yaselc/WebService1/1.0.0) - Proxy REST service to verify user email
* [WebService2](https://app.swaggerhub.com/apis/yaselc/WebService2/1.0.0) - Backend REST service to verify user email

## Deployment

Add additional notes about how to deploy this on a live system

## Authors

* **Yasel Couce** 

## License

This project is licensed under the GNU GENERAL PUBLIC License - see the [LICENSE](LICENSE) file for details
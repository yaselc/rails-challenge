# webservice1_client

WebService1 - the Ruby gem for the WebService 1

This is a simple authentication webservice for a demonstration purpose. 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 0.1.1
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build webservice1_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./webservice1_client-0.1.1.gem
```
(for development, run `gem install --dev ./webservice1_client-0.1.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'webservice1_client', '~> 0.1.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'webservice1_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'webservice1_client'

api_instance = WebService1::LoginApi.new

body = WebService1::Login.new # Login | User email that need to be verified


begin
  #Authenticate user
  result = api_instance.auth_user(body)
  p result
rescue WebService1::ApiError => e
  puts "Exception when calling LoginApi->auth_user: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000/rest*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*WebService1::LoginApi* | [**auth_user**](docs/LoginApi.md#auth_user) | **POST** /login | Authenticate user


## Documentation for Models

 - [WebService1::ApiResponse](docs/ApiResponse.md)
 - [WebService1::Login](docs/Login.md)


## Documentation for Authorization

 All endpoints do not require authorization.


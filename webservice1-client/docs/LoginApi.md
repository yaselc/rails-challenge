# WebService1::LoginApi

All URIs are relative to *http://localhost:3000/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_user**](LoginApi.md#auth_user) | **POST** /login | Authenticate user


# **auth_user**
> ApiResponse auth_user(body)

Authenticate user

### Example
```ruby
# load the gem
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Login**](Login.md)| User email that need to be verified | 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




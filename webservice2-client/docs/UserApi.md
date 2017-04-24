# WebService2Client::UserApi

All URIs are relative to *http://localhost:3000/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ver_user**](UserApi.md#ver_user) | **POST** /verify_user/{email} | Verify user


# **ver_user**
> ApiResponse ver_user(email, image, opts)

Verify user

### Example
```ruby
# load the gem
require 'webservice2_client'

api_instance = WebService2Client::UserApi.new

email = "email_example" # String | User email to verify

image = WebService2Client::UserImage.new # UserImage | Image uploaded by user

opts = { 
  format: "format_example" # String | 
}

begin
  #Verify user
  result = api_instance.ver_user(email, image, opts)
  p result
rescue WebService2Client::ApiError => e
  puts "Exception when calling UserApi->ver_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| User email to verify | 
 **image** | [**UserImage**](UserImage.md)| Image uploaded by user | 
 **format** | **String**|  | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




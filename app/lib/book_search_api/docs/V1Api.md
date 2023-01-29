# BookSearchApiClient::V1Api

All URIs are relative to *https://api.calil.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_libraries**](V1Api.md#get_libraries) | **GET** /library | Returns a list of libraries. |


## get_libraries

> <Array<Library>> get_libraries(appkey, pref, opts)

Returns a list of libraries.

### Examples

```ruby
require 'time'
require 'book_search_api_client'

api_instance = BookSearchApiClient::V1Api.new
appkey = 'appkey_example' # String | 
pref = 'pref_example' # String | 
opts = {
  city: 'city_example', # String | 
  systemid: 'systemid_example', # String | 
  geocode: 'geocode_example', # String | 
  format: 'format_example', # String | 
  callback: 'callback_example', # String | 
  limit: 56 # Integer | 
}

begin
  # Returns a list of libraries.
  result = api_instance.get_libraries(appkey, pref, opts)
  p result
rescue BookSearchApiClient::ApiError => e
  puts "Error when calling V1Api->get_libraries: #{e}"
end
```

#### Using the get_libraries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Library>>, Integer, Hash)> get_libraries_with_http_info(appkey, pref, opts)

```ruby
begin
  # Returns a list of libraries.
  data, status_code, headers = api_instance.get_libraries_with_http_info(appkey, pref, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Library>>
rescue BookSearchApiClient::ApiError => e
  puts "Error when calling V1Api->get_libraries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appkey** | **String** |  |  |
| **pref** | **String** |  |  |
| **city** | **String** |  | [optional] |
| **systemid** | **String** |  | [optional] |
| **geocode** | **String** |  | [optional] |
| **format** | **String** |  | [optional] |
| **callback** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

[**Array&lt;Library&gt;**](Library.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


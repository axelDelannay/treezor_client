# TreezorClient::MerchantIdRestrictionGroupsApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_merchant_id_restriction_groups**](MerchantIdRestrictionGroupsApi.md#delete_merchant_id_restriction_groups) | **DELETE** /merchantIdRestrictionGroups/{id} | cancel a merchant id restriction group
[**get_merchant_id_restriction_group**](MerchantIdRestrictionGroupsApi.md#get_merchant_id_restriction_group) | **GET** /merchantIdRestrictionGroups | search merchant id restriction  groups
[**get_merchant_id_restriction_groups_id**](MerchantIdRestrictionGroupsApi.md#get_merchant_id_restriction_groups_id) | **GET** /merchantIdRestrictionGroups/{id} | get a merchant ID restriction group
[**post_merchant_id_restriction_group**](MerchantIdRestrictionGroupsApi.md#post_merchant_id_restriction_group) | **POST** /merchantIdRestrictionGroups | create a merchantIdRestrictionGroup
[**put_merchant_id_restriction_groups**](MerchantIdRestrictionGroupsApi.md#put_merchant_id_restriction_groups) | **PUT** /merchantIdRestrictionGroups/{id} | edit a merchant id restriction group


# **delete_merchant_id_restriction_groups**
> InlineResponse20014 delete_merchant_id_restriction_groups(id, opts)

cancel a merchant id restriction group

Cancel a merchant id restriction group from the system.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::MerchantIdRestrictionGroupsApi.new

id = 789 # Integer | Merchant ID restriction Group internal id.

opts = { 
  fields: ["fields_example"] # Array<String> | List of the object's properties you want to pick up.
}

begin
  #cancel a merchant id restriction group
  result = api_instance.delete_merchant_id_restriction_groups(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MerchantIdRestrictionGroupsApi->delete_merchant_id_restriction_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Merchant ID restriction Group internal id. | 
 **fields** | [**Array&lt;String&gt;**](String.md)| List of the object&#39;s properties you want to pick up. | [optional] 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_merchant_id_restriction_group**
> InlineResponse20014 get_merchant_id_restriction_group(opts)

search merchant id restriction  groups

Get merchant ID restriction groups that match search criteria.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::MerchantIdRestrictionGroupsApi.new

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  fields: ["fields_example"], # Array<String> | List of the object's properties you want to pick up.
  filter: "filter_example", # String | You can filter the API response by using filter(s). Filterable fields are :   - id   - name   - isWhitelist   - status   - startDate   - createdDate    Filters should be separated by a \";\". Example for 3 filters : FILTER1;FILTER2;FILTER3.    A single filter has the following syntax : \"fieldName criterion expression\".    Where :     - fieldName : the name of a filterable field of this object.      - expression : the values to be included or excluded (see the table below for more information)      - criterion : a filter criterion.    Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |   |----------|------------------------|------------------------------------------|--------------------|   |     >    |      greater than      |            alphanumeric string           |         100        |   |    >=    | greater or equal than  |            alphanumeric string           |         100        |   |     <    |        less than       |            alphanumeric string           |         100        |   |    <=    |   less or equal than   |            alphanumeric string           |         100        |   |    !=    |      not equal to      |            alphanumeric string           |         100        |   |   like   |          like          |            alphanumeric string           |         100        |   |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |   |    ==    |         equals         |            alphanumeric string           |         100        | 
  page_number: 56, # Integer | Pagination page number. More info [here](https://agent.treezor.com/lists).
  page_count: 56, # Integer | The number of items per page. More info [here](https://agent.treezor.com/lists).
  sort_by: "sort_by_example", # String | The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).
  sort_order: "sort_order_example" # String | The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
}

begin
  #search merchant id restriction  groups
  result = api_instance.get_merchant_id_restriction_group(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MerchantIdRestrictionGroupsApi->get_merchant_id_restriction_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| List of the object&#39;s properties you want to pick up. | [optional] 
 **filter** | **String**| You can filter the API response by using filter(s). Filterable fields are :   - id   - name   - isWhitelist   - status   - startDate   - createdDate    Filters should be separated by a \&quot;;\&quot;. Example for 3 filters : FILTER1;FILTER2;FILTER3.    A single filter has the following syntax : \&quot;fieldName criterion expression\&quot;.    Where :     - fieldName : the name of a filterable field of this object.      - expression : the values to be included or excluded (see the table below for more information)      - criterion : a filter criterion.    Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |   |----------|------------------------|------------------------------------------|--------------------|   |     &gt;    |      greater than      |            alphanumeric string           |         100        |   |    &gt;&#x3D;    | greater or equal than  |            alphanumeric string           |         100        |   |     &lt;    |        less than       |            alphanumeric string           |         100        |   |    &lt;&#x3D;    |   less or equal than   |            alphanumeric string           |         100        |   |    !&#x3D;    |      not equal to      |            alphanumeric string           |         100        |   |   like   |          like          |            alphanumeric string           |         100        |   |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |   |    &#x3D;&#x3D;    |         equals         |            alphanumeric string           |         100        |  | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists). | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists). | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_merchant_id_restriction_groups_id**
> InlineResponse20014 get_merchant_id_restriction_groups_id(id, opts)

get a merchant ID restriction group

Get a merchant ID restriction group from the system.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::MerchantIdRestrictionGroupsApi.new

id = 789 # Integer | Merchant ID restriction Group internal id.

opts = { 
  fields: ["fields_example"] # Array<String> | List of the object's properties you want to pick up.
}

begin
  #get a merchant ID restriction group
  result = api_instance.get_merchant_id_restriction_groups_id(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MerchantIdRestrictionGroupsApi->get_merchant_id_restriction_groups_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Merchant ID restriction Group internal id. | 
 **fields** | [**Array&lt;String&gt;**](String.md)| List of the object&#39;s properties you want to pick up. | [optional] 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_merchant_id_restriction_group**
> InlineResponse20014 post_merchant_id_restriction_group(opts)

create a merchantIdRestrictionGroup

Create a new merchant ID restriction group in the system.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::MerchantIdRestrictionGroupsApi.new

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  body: TreezorClient::Body7.new # Body7 | 
}

begin
  #create a merchantIdRestrictionGroup
  result = api_instance.post_merchant_id_restriction_group(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MerchantIdRestrictionGroupsApi->post_merchant_id_restriction_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **body** | [**Body7**](Body7.md)|  | [optional] 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_merchant_id_restriction_groups**
> InlineResponse20014 put_merchant_id_restriction_groups(id, opts)

edit a merchant id restriction group

Edit a merchant id restriction group in the system.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::MerchantIdRestrictionGroupsApi.new

id = 56 # Integer | Merchant ID restriction group's id.

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  body: TreezorClient::Body8.new # Body8 | 
}

begin
  #edit a merchant id restriction group
  result = api_instance.put_merchant_id_restriction_groups(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MerchantIdRestrictionGroupsApi->put_merchant_id_restriction_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Merchant ID restriction group&#39;s id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **body** | [**Body8**](Body8.md)|  | [optional] 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




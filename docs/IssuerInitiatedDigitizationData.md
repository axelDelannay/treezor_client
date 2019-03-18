# TreezorClient::IssuerInitiatedDigitizationData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Tav request Id | [optional] 
**card_id** | **Integer** | The id of the card | [optional] 
**status_id** | **Integer** | The status ID of the TAV request; \&quot;1\&quot; means the \&quot;issuerInitiatedDigitizationData have been requested\&quot;, \&quot;2\&quot; means that the data object can be retrieved. | [optional] 
**credential** | **String** |  | [optional] 
**additionnal_data** | **Array&lt;String&gt;** | We do not persist this information for security reasons | [optional] 
**token_requestor** | **String** | The token requestor also named wallet provider. | [optional] 
**created_date** | **String** |  | [optional] 
**modified_date** | **String** |  | [optional] 



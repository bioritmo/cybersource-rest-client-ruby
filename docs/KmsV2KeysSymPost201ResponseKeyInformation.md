# CyberSource::KmsV2KeysSymPost201ResponseKeyInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_id** | **String** | Merchant Id  | [optional] 
**external_organization_id** | **String** | Payworks MerchantId for given organizationId.  | [optional] 
**reference_number** | **String** | Reference number is a unique identifier provided by the client along with the organization Id. This is an optional field provided solely for the client’s convenience. If client specifies value for this field in the request, it is expected to be available in the response.  | [optional] 
**key_id** | **String** | Key Serial Number  | [optional] 
**key** | **String** | value of the key  | [optional] 
**status** | **String** | The status of the key.  Possible values:  - FAILED  - ACTIVE  | [optional] 
**expiration_date** | **String** | The expiration time in UTC. &#x60;Format: YYYY-MM-DDThh:mm:ssZ&#x60;  Example 2016-08-11T22:47:57Z equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The T separates the date and the time. The Z indicates UTC.  | [optional] 
**message** | **String** | message in case of failed key | [optional] 
**error_information** | [**KmsV2KeysSymPost201ResponseErrorInformation**](KmsV2KeysSymPost201ResponseErrorInformation.md) |  | [optional] 



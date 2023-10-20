# CyberSource::InlineResponse4006

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**submit_time_utc** | **String** | Time of request in UTC. Format: &#x60;YYYY-MM-DDThh:mm:ssZ&#x60; **Example** &#x60;2016-08-11T22:47:57Z&#x60; equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The &#x60;T&#x60; separates the date and the time. The &#x60;Z&#x60; indicates UTC.  Returned by Cybersource for all services.  | [optional] 
**status** | **String** | The status of the submitted transaction.  Possible values:  - INVALID_REQUEST  | [optional] 
**reason** | **String** | The reason of the status.  Possible values:  - MISSING_FIELD  - INVALID_DATA  | [optional] 
**message** | **String** | The detail message related to the status and reason listed above. | [optional] 
**details** | [**Array&lt;PtsV2PaymentsPost201ResponseErrorInformationDetails&gt;**](PtsV2PaymentsPost201ResponseErrorInformationDetails.md) |  | [optional] 


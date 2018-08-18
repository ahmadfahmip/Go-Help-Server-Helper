# Go-Help
Go-Help is an Android Application that simplify the process of helping Indonesian people from dangerous situation. It is also used as the project to complete the task given by Go-Jek Camp   

# Go-Help-Server-Helper
This part service that handles Helper and HelperTypes. Here lies the API documentation.
    
## Helper    
### Create new Helper    
 - URL:  `/create_helper`
 - Method: `POST` 
 - Headers: `Content-Type: application/json`  
 - Body    
  
	 | Field | Type | Description |    
	 | ----- | ---- | ----------- |  
	 | name | string | Helper name |  
	 | email | string | Helper email |  
	 | password | string | Helper password |  
	 | phone_number | string | Helper phone number |
	 | helper_type_id | integer | Helper type |
 - Response
	```
	{
	    "id",
	    "name",
	    "email",
	    "password",
	    "phone_number",
	    "helper_type_id",
	    "created_at",
	    "updated_at",
	    "device_id",
	    "longitude": null,
	    "latitude": null
	}
	```

### Get list of Helpers    
 - URL:  `/get_helpers`
 - Method: `GET` 
 - Response:
	```
	[
		{
			"id",
			"name",
			"email",
			"password",
			"phone_number",
			"helper_type_id",
			"created_at",
			"updated_at",
			"device_id",
			"longitude",
			"latitude"
		}
	]
	```

### Update Helper location   
 - URL:  `/update_helper_location`
 - Method: `POST` 
 - Headers: `Content-Type: application/json`  
 - Body    
  
	 | Field | Type | Description |    
	 | ----- | ---- | ----------- | 
	 | id | integer | Helper ID | 
	 | longitude | float | Helper longitude coordinate |
	 | latitude | float | Helper latitude coordinate |
 - Response:
	None (`204 No Content`)

---  
## HelperType   
### Create new HelperType    
 - URL:  `/create_helper_type`
 - Method: `POST` 
 - Headers: `Content-Type: application/json`  
 - Body    
  
	 | Field | Type | Description |    
	 | ----- | ---- | ----------- |  
	 | name | string | Helper type |  
 - Response
	```
	{
	    "id",
	    "name",
	    "created_at",
	    "updated_at",
	}
	```
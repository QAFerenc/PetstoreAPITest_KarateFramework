Feature: Sample API Test

  Scenario: Test a sample GET API
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=available'
    When method GET
    And status 200
    And url 'https://petstore.swagger.io/v2/pet'
    And request {"id": 0,"category": {"id": 0,"name": "string"},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    And method POST
    And status 200
    And id=response.id
    And url 'https://petstore.swagger.io/v2/pet'
    And request {"id": '#(id)',"category": {"id": 0,"name": "string"},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "sold"}
    And method PUT
    And status 200
    And url 'https://petstore.swagger.io/v2/pet/'+id
    And method DELETE
    Then status 200


global with sharing class ParksServicesMock implements WebServiceMock{
    global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {

        // Create response element from the autogenerated class.
        ParksServices1.byCountryResponse responseElement = new ParksServices1.byCountryResponse();
        responseElement.return_x = new List<String>{'National Park', 'Animals Park'};
        // Populate response element.
        // Add response element to the response parameter, as follows:
        response.put('response_x', responseElement); 
   }
}
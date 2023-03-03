public with sharing class RestCalloutUsingNC {
    public static HttpResponse getCaseDetails() {
        //1 create http request and wrap all the necesseary data in it
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('callout:NC_Dev_Acc/services/apexrest/Cases/500B000000AZFhVIAX');
        //2 prepare internet 
        Http http = new Http();
        //3 send the requeast over the internet to recieve response
        HttpResponse response = http.send(request);
        //4 process the response 
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());

        return response;
        
    }
}
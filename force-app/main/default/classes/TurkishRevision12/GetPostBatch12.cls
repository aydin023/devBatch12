public with sharing class GetPostBatch12 {
    public static void getTodos() {
        Http httpObject = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/todos');
        request.setMethod('GET');
        HttpResponse response = httpObject.send(request);
        String responseBody = response.getBody();
        if (response.getStatusCode() == 200) {
            System.debug('get => ' + responseBody);
        }
    }
    public static void postTodos() {
        Http httpObject = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/todos');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'Application/JSON');
        request.setBody('{"userId": 1,"title": "post item", "completed": false}');

        HttpResponse response = httpObject.send(request);
        String responseBody = response.getBody();
        if (response.getStatusCode() == 201) {
            System.debug('post => ' + responseBody);
            System.debug('Isleminiz gerceklesmisdir');
        }
    }
}
@isTest

public with sharing class RestCalloutTest {
    
    @isTest
    private static void getAnimalsTest() {
        // 1 set the mock 
        RestCalloutMock mock =new RestCalloutMock();
        test.setMock(HttpCalloutMock.class, mock);

        // 2 test the mock
        HttpResponse response = RestCallouts.getAnimals();

        // 3 Run asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }


    @isTest
    private static void getAirlineTest() {
        //1 set mock
        RestCalloutMock mock = new RestCalloutMock();
        test.setMock(HttpCalloutMock.class, mock);
        //2 test the mock
        HttpResponse response = RestCallouts.getAirlines();
        //3 run asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest
    private static void getEmployeesTest() {
        //1 set mock
        RestCalloutMock mock = new RestCalloutMock();
        test.setMock(HttpCalloutMock.class, mock);
        //2 test the mock
        HttpResponse response = RestCallouts.getEmployees();
        //3 run asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());

    }
}
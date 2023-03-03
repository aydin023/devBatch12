@istest
public with sharing class SoapCalloutsTestTR {
    @isTest
    private static void testTestCase() {
        ParksServicesMock mock = new ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);

        string country = 'Turkey';
        string[] parks = SoapCalloutsTR.parksCallouts(country);

        System.assertEquals(2, parks.size());
    }
}
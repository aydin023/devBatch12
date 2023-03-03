@isTest
public with sharing class SoapCalloutsTest {
    // SoapCallout.cls => Mock.cls => SoapCalloutTest.cls

    @isTest
    private static void parksCalloutTest() {
        //1. Set The Mock
        ParksServicesMock mock = new ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);

        //2. Test the mock
        String country = 'Turkiye';
        String[] parks = SoapCallouts.parksCallout(country);

        //3. Do asserts
        System.assertEquals(2, parks.size());
    }

    @isTest
    private static void doAddCalloutTest() {
        //1. Set The Mock
        DoAddCalloutMock mock =new DoAddCalloutMock();
        Test.setMock(WebServiceMock.class, mock);

        //2. Test the mock
        Double result = SoapCallouts.doAddCallout(10, 5);

        //3. Do asserts
        System.assertEquals(15, result);
    }
    
    @isTest
    private static void doMultiplyCallout() {
        //1. Set The Mock
        DoMultiplyCalloutMock mock =new DoMultiplyCalloutMock();
        Test.setMock(WebServiceMock.class, mock);
        
        //2. Test the mock
        Double result = SoapCallouts.doMultiplyCallout(10, 5);

        //3. Do asserts
        System.assertEquals(50, result);
    }
}
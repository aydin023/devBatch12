@isTest
public with sharing class RestApiOutboundCalloutTestTR {
    @isTest
    private static void getCountryFlagTest() {
        //1 mock create ediyoruz(olusdurdugumuz mock classindan )
        GetFlacCountry12CalloutMockTR mock = new GetFlacCountry12CalloutMockTR();
        Test.setMock(HttpCalloutMock.class, mock);

        //2 Test ediyoruz(methodu cagirioruz)
        HttpResponse response = CountryFlagsTR.getCountries();
        
        //2 asserts ile kontrol ediyoruz
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }
}
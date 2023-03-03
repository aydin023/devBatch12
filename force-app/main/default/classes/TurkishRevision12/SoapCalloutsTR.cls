public with sharing class SoapCalloutsTR {
    public static string[] parksCallouts(string country) {
        ParksServices1.ParksImplPort parkService = new ParksServices1.ParksImplPort();
        string[] parks = parkService.byCountry(country);
        System.debug(country + ' ulkesinin parklari => ' + parks);
        return parks;
    }
}
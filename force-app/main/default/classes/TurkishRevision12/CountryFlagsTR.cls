public with sharing class CountryFlagsTR {
    public static HttpResponse getCountries() {
        //1
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://restcountries.com/v2/all');
        request.setMethod('GET');

        //2
        Http ht = new Http();
        HttpResponse response = ht.send(request);

        //3
        if (response.getStatusCode() == 200) {
            String jsonData = response.getBody();
            List<wrapperCountryFlag> listWrapper = (List<wrapperCountryFlag>)JSON.deserialize(jsonData, List<wrapperCountryFlag>.class);

            //bos bir org-umuzdaki ogjemize ait bir liste olusturalim
            List<Country_Flag__c> listCountry = new List<Country_Flag__c>();

            for (wrapperCountryFlag eachWrapper : listWrapper) {
                Country_Flag__c obj = new Country_Flag__c();
                obj.Name = eachWrapper.name;
                obj.Native_Name__c = eachWrapper.nativeName;
                obj.Capital__c = eachWrapper.capital;
                obj.Population__c = eachWrapper.population;
                obj.Region__c = eachWrapper.region;
                obj.Flag_URL__c = eachWrapper.flags.svg;

                listCountry.add(obj);

            }
            insert listCountry;
        }
        return response;
    }

    public class wrapperCountryFlag {
        public string name;
        public string nativeName;
        public string capital;
        public Integer population;
        public string region;
        public flagsWrapper flags;
    }
    public class flagsWrapper{
        public string svg;
    }
}
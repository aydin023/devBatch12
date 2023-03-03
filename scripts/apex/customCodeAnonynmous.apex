//acces custom setting here.
Map<string, Country_code__c> allCountryCode = Country_code__c.getAll();
System.debug('all country code '+ allCountryCode);

//country name India, its code(code__c) is IND

for (string eachCountry :allCountryCode.keyset() ) {
    System.debug('Country name is => '+ eachCountry + ' , its code is '+ allCountryCode.get(eachCountry).code__c);
}
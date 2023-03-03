public with sharing class AirlineHandler {
    public static void afterInsert(Map<Id,Airline__c> newAirlines) {
        //callout sent airlines info to authority
        for (id airlineId : newAirlines.keySet()) {
            AirlineCallouts.postAirline(airlineId);
        }
    }
}
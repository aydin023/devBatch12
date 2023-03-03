trigger AirlineTrigger on Airline__c (after insert) {
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            AirlineHandler.afterInsert(trigger.newMap);
        }
    }
}
trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert) {
    if (trigger.isAfter && trigger.isInsert) {
        //here we call handler to create default ticket
        SalesforceProjectTriggerHandler.createDefaultTicket(trigger.new);
    }
}
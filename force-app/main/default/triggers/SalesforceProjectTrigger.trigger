trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isInsert) {
        //here we call handler to create default ticket
        SalesforceProjectTriggerHandler.createDefaultTicket(trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        // do completion validation
        SalesforceProjectTriggerHandler.validateSPComplete(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
}
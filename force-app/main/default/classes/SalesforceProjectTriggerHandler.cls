public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket( List<Salesforce_Project__c> spTriggerNew ) {
        //create one empty LIST of salesforce ticket
        List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();
        //for each project new ticket
        for (Salesforce_Project__c eachSP : spTriggerNew) {
            //create new st
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default st';
            st.Salesforce_Project__c = eachSP.id;
            newSTList.add(st);
        }
        if (!newSTList.isEmpty()) {
            insert newSTList;
        }
    }
}

public with sharing class UpdateSalesforceTicketInvocableTR {
    
    @invocableMethod(label='Completed Tickets'
                     description = 'Child olan tum ticketlerin statulerini completed yapma'
                     category= 'Salesforce Project')
    public static void completedTicket(list<id> spIds) {
        //1. salesforce project id-lerine bagli tum ticketlerin idlerini SOQL ile getiriyoruz
        List<Salesforce_Ticket__c> stList = [select id, status__c from Salesforce_Ticket__c Where Salesforce_Project__c IN :spIds and status__c != 'completed'];
        //2. Bu listeyi bir for dongusu icine koyub statulerini completed yapiyoruz.
        for (Salesforce_Ticket__c st : stList) {
            st.status__c = 'Completed';
        }
        //3. Bu listeyi update ediyoruz..
        try {
            update stList;
        } catch (Exception e) {
            System.debug(e);
        }
    }
}


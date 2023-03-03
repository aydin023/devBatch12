@isTest
public with sharing class OpportunityManagerTest {
    @isTest
    private static void postOpportunityTest() {
        test.startTest();
        Id oppId =  OpportunityManager.createOpportunity('Jhon', '2023-6-2', 'Prospecting', '6900');
        System.assertNotEquals(null, oppId);

        Opportunity op = [select id, name, closedate, stageName, amount from Opportunity where id =: oppId];
        // System.assertEquals('Jhon', op.Name);

        Assert.areEqual('Jhon', op.Name);
        test.stopTest();
    }
}
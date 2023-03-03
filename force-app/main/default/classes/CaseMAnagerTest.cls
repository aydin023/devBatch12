@isTest
public with sharing class CaseMAnagerTest {
   @TestSetup
   private static void makeDate() {
        List<Case> cases = new List<Case>();
        for (Integer i = 0; i < 3; i++) {
            Case cs = new Case(Subject='Test Subject ' +i, Description='Test Description '+i, Origin='Email');
            cs.Type = '';
            cs.Priority = 'High';
            cs.Status = 'New';
            cases.add(cs);
        }
        insert cases;
        List<Case> insertedCases =[SELECT id FROM Case];
        System.assertEquals(3, insertedCases.size());

   }
   @isTest
   private static void postCaseTest() {
        Test.startTest();
        Id caseId = CaseManager.postCase('Subject', 'Description', 'High', 'New');
        System.assertNotEquals(null, caseId);
        Case cs = [Select id, Subject, Priority FROM Case WHERE id = :caseId];
        System.assertEquals('High', cs.Priority);
        Test.stopTest();
   }
   @isTest
   private static void putCaseTest1() {
        Test.startTest();
        //pass null in ID => Testing insert scenario
        Id caseId = CaseManager.putCase(null, 'Subject', 'Description', 'Medium', 'New');
        System.assertNotEquals(null, caseId);
        Case cs1 = [SELECT Id, Subject, Priority FROM Case WHERE Id = :caseId];
        System.assertEquals ( 'Medium', cs1.Priority);

        //pass valid ID => Testing update scenario
        Id sameCaseId = CaseManager.putCase(caseId, 'Subject Changed', 'Description', 'High', 'In Progress');
        System.assertEquals(caseId, sameCaseId);
        Case cs2 = [SELECT Id, Priority FROM Case WHERE Id = :caseId];

        Test.stopTest();
   }

   @isTest
   private static void getCaseTest() {
    Test.startTest();

    //1.Prepare RestRequest
    Case cs = [ SELECT id, Subject, Priority, Status FROM Case LIMIT 1];
    String homeUrl = System.Url.getSalesforceBaseUrl().toExternalForm();

    RestRequest request = new RestRequest();
    request.httpMethod = 'GET';
    request.requestURI = homeUrl + '/services/apexrest/Case/' + cs.Id;
    //2.Prepare RestContext
    RestContext.request = request;

    //3.Test the business method
    Case objCase = CaseManager.getCase();
    System.assertEquals(cs.Id, objCase.id);
    System.assertEquals(cs.Subject, objCase.Subject);
    System.assertEquals(cs.Priority, objCase.Priority);
    
    Test.stopTest();

   }

   @isTest
   private static void deleteCaseTest() {
    Test.startTest();
    //1.Prepare RestRequest
    Case cs = [SELECT id, Subject, Priority, Status FROM Case LIMIT 1];
    String homeUrl = System.Url.getSalesforceBaseUrl().toExternalForm();


    RestRequest request = new RestRequest();
    request.httpMethod = 'DELETE';
    request.requestURI = homeUrl + '/services/apexrest/Case/' + cs.Id;

    //2.Prepare RestContext
    RestContext.request=request;

    //3.Test the business method
    String status = CaseManager.deleteCase();
    System.assertEquals('Success', status);

    
     //Test Exception
     try {
        String failstatus = CaseManager.deleteCase();
        System.assertEquals('Fail', failstatus);
    } catch(Exception ex) {
        
    }

    Test.stopTest();

   }
   @isTest
   private static void patchCaseTest() {
    Test.startTest();

    //1.Prepare RestRequest
    Case cs = [SELECT id, Subject, Description, Priority, Status FROM Case LIMIT 1];
    cs.Priority = 'Medium';
    cs.Status = 'In Progress';
    String body = JSON.serialize(cs);

    RestRequest request = new RestRequest();
    request.httpMethod = 'PATCH';
    request.requestBody = Blob.valueOf(body);
    
    //2.Prepare RestContext
    RestContext.request=request;

    //3.Test the business method
    Case objCase = CaseManager.patchCase();
    System.assertEquals('Medium', objCase.Priority);
    System.assertEquals('In Progress', objCase.Status);

    Test.stopTest();

   }

}


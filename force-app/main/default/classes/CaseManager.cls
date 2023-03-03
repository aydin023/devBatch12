@RestResource(urlMapping='/Case/*')   ///services/apexrest/Case/*   <= key
global with sharing class CaseManager {
    //https://aydindeveloper-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000002YgeOIAS

    @HttpGet
    global static Case getCase() {
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);
        Case cs = [SELECT id, CaseNumber, Subject, Description, Type, Priority, Status From Case WHERE id =:caseId];
        return cs;
    }

    @HttpPost
    global static Id postCase(String Subject, String Description, String Priority, String Status) {
        Case cs = new Case();
        cs.Subject = Subject;
        cs.Description = Description;
        cs.Priority = Priority;
        cs.Status = Status;
        insert cs;
        return cs.id;
    }

    @HttpDelete
    global static String deleteCase() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);
        try {
            Case cs = [SELECT id FROM Case WHERE id = : caseId];
            delete cs;
        } catch(Exception ex) {
            return 'Fail';
        }
        return 'Success';
    }

    @HttpPut
    global static Id putCase(String Id, String Subject, String Description, String Priority, String Status) {
        Case cs = new Case();
        cs.Id = Id;
        cs.Subject = Subject;
        cs.Description = Description;
        cs.Priority = Priority;
        cs.Status = Status;
        upsert cs;
        return cs.id;
    }

    @HttpPatch
    global static Case patchCase() {
        RestRequest request = RestContext.request;
        String body =  request.requestBody.toString();
        Case cs = (Case)JSON.deserialize(body, Case.class);
        update cs;
        return [SELECT Id, CaseNumber, Subject, Description, Priority, Status FROM Case WHERE Id = :cs.Id limit 1];
    }

}

//SPLIT  -  Based on /
//https://aydindeveloper-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000002YgeOIAS
// 1, https:
// 2.
// 3. sfdev12-dev-ed.trailblaze.my.salesforce.com
// 4. services
// 5. apexrest
// 6. Case
// 7. 500Do000002YgeOIAS

//lastIndexOf('/')
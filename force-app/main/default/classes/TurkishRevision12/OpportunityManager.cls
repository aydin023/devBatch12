@RestResource(urlMapping='/Opp/*')
global with sharing class OpportunityManager {
    @HttpGet
    global static id getOpportunity() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        id oppId = uri.substringAfterLast('/');
        // alternative version => Id oppId = request.requestURI.substringAfterLast('/');

        Opportunity op = [select id, name, closeDate, stageName, amount from Opportunity where id= :oppId];
        return op.id;
    }

    @HttpPost
    //post
    global static id createOpportunity(string ad, string closeDate, string stageName, string amount) {
        Opportunity opp = new Opportunity();
        opp.name = ad;
        opp.CloseDate = Date.valueOf(closeDate);
        opp.StageName = stageName;
        opp.Amount = Decimal.valueOf(amount);

        insert opp;
        return opp.Id;

    }
    @HttpDelete
    global static String deleteOpportunity() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        id oppId = uri.substringAfterLast('/');
        Opportunity op = [select id from Opportunity WHERE id =: oppId];
        delete op;

        return 'Record Deleted ';
    }

    @HttpPut
    global static Id upsertOpportunity(string id, string name, string closeDate, string stageName, string amount) {
        Opportunity opp = new Opportunity();
        opp.Id= id;
        opp.Name= name;
        opp.CloseDate = Date.valueOf(closeDate);
        opp.StageName = stageName;
        opp.Amount = Decimal.valueOf(amount);
        upsert opp;

        return opp.id;
    }

    @HttpPatch
    global static Opportunity updateOpportunity() {
        RestRequest request = RestContext.request;
        string jsonString = request.requestBody.toString();
        Opportunity op = (Opportunity)JSON.deserialize(jsonString, Opportunity.class);
        update op;

        Opportunity opNew = [select id, name, stageName, closeDate from Opportunity WHERE id =:op.id];
        return opNew;
    }
}
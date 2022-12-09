public class AccConAndOppOperations {
    public static decimal sumOfAmount() {
        List<opportunity> oppList = new List<opportunity>();
        oppList = [select id, amount FROM opportunity WHERE stagename = 'Closed Won'];
        decimal sumAmount = 0;
        for (Opportunity eachOp : oppList) {
            sumAmount = eachOp.amount + sumAmount;
        }
        System.debug('sum of amount '+ sumAmount);
        return sumAmount;
    }

    public static  List<account> allAccount(string stgNm) {
        List<account> accnList = new List<account>();
        accnList = [select id, name FROM account WHERE id in(SELECT accountId FROM Opportunity where StageName =:stgNm)];
        System.debug('all account '+ accnList);
        return accnList;
    }

    public static list<account> allAccount2() {
        List<account> accnList = new List<account>();
        accnList = [select id, name FROM Account where id in(select accountID FROM contact)];
        System.debug('all account '+ accnList);
        return accnList;
    }
    public static void conAccant(id accID) {
        Account acc = [select id, name FROM account where id =: accID];
        Contact cnt = new Contact();
        cnt.lastName = acc.name ;
        cnt.Accountid= acc.id;
        System.debug('Kayid olusturuldu '  ) ;

        insert cnt;

    }

//     Update the description field of top 10 opportunities as "This is one of the top 10 opportunities.
// Please work on this properly “
    public static void upOpp() {
        List<opportunity> oppList = new List<opportunity>();
        oppList = [select id, name, description FROM Opportunity WHERE amount>0 ORDER BY Amount desc limit 10];
        for (opportunity eachOpp : oppList) {
            eachOpp.Description = 'This is one of the top 10 opportunities.Please work on this properly';
            
        }
    
        update oppList;
    }

//     Write a logic to create and return n number of opportunities for a particular AccountId.
// AccountId and n will be passed as parameters in the method.
// Populate opportunity fields as follows:
// Close date as 3 years from today
// Stage name as Prospecting
// Opportunity amount as Account’s annual revenue divided by n
// and Opportunity name same as Account name
// For Ex: if n=2, Then two new opportunities If n=0, Print the message as “Please tell us how many
// opportunities needs to be created

    public static List<Opportunity> oppAcc(string AId, integer n) {
        account a1 = [select id, AnnualRevenue, name from Account where id =: AId];
        List<opportunity> oppList = new List<opportunity>();
        if (n>0) {
            for (Integer i = 0; i < n; i++) {
                Opportunity nwOpp = new Opportunity();
                nwOpp.CloseDate = date.today().addYears(3);
                nwOpp.StageName = 'Prospecting';
                if (a1.AnnualRevenue != null) {
                    nwOpp.Amount=a1.AnnualRevenue/n;
                }
                nwOpp.accountId = a1.id;
                nwOpp.name=a1.name;
                oppList.add(nwOpp);
                System.debug(nwOpp);
            }

            insert oppList;
        }else {
            System.debug('“Please tell us how many opportunities needs to be created');
        }
        return oppList;
    }
    
}

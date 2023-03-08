public with sharing class AccountCtrl {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts(){
        return[SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE AnnualRevenue != null WITH SECURITY_ENFORCED order by AnnualRevenue DESC LIMIT 10];
 }
}
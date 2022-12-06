public class SoqlDemo12 {
    
    public static integer accountIndustryOfEducation(string indst) {
        //Account recorlarindan Industry 'Education' olanlarin listesinin record sayisini bulup return eden bir metot yazin..
        List<Account> accList = [select id, name, industry from Account where Industry =:indst];
        System.debug('account listesi = ' + accList);
        integer recordSayisi = accList.size();
        return recordSayisi;
        
    }
    
    public static void AccontWithContacts(string indstry) {
        //Accountlardan industry Energy olanlari contactlari ile beraber listeleyin ve her bir recordu tek tek yazin..
        List<Account> accList = [select id, name, (select id, lastName from Contacts) from account where Industry =: indstry];
        System.debug('Account listemiz.. ' + accList);
        for (account acc : accList) {
            System.debug(acc);
            System.debug(acc.contacts);
            for (contact con : acc.contacts) {
                System.debug(con);
            }
        }
    }
}
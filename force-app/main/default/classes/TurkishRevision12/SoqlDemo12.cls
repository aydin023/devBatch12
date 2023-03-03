public class SoqlDemo12 {
    
    public static integer accountIndustryOfEducation(string indst) {
        //Account recordlarindan Industry 'Education' olanlarin listesinin record sayisini bulup return eden bir metot yazin.. sonra da dinamik hale getirin..
        List<Account> accList = [select id, name, industry from Account where Industry =:indst];
        System.debug('account listesi = ' + accList);
        integer recordSayisi = accList.size();
        return recordSayisi;
        
    }

    public static void dmlInsertDemo_4() {
        account acc = [select id, name from account where name = 'SoftInnovas Inc.' limit 1];

        //creaet contact
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.id;
        insert cnt;
        system.debug('contact record: ' + cnt);
    }
    
    /*public static void AccontWithContacts(string indstry) {
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
    }*/
}
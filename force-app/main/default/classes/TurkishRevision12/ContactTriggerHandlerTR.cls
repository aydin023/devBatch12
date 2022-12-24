public class ContactTriggerHandlerTR {
    public static void contactOtherPhone(List<Contact> trgNew, List<Contact> trgOld, Map<Id, Contact> trgOldMap, Map<Id, Contact> trgNewMap) {
        //Account idlerini key o id ye ait recordu value olarak alan bir map olusturalim..
        Map<Id, Account> accMap = new Map<Id, Account>();
        
        //insert edilen contactlarin bagli oldugu accountlarin id lerini bir set yapida toplayalim..
        Set<id> accIds = new Set<id>();
        
        //Bir accounta bagli contactlari ayri bir liste yapalim.. sonra bu liste uzerinde update yapalim..
        List<Contact> conList = new List<Contact>();

        //trigger new bir for each dongusune alinir..
        for (Contact con : trgNew) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
                conList.add(con);
            }
        }
        //SOQL ile bu accountlara ait record bilgilerini getirelim..
        List<Account> accList = [select id, name, phone from account where id IN :accIds];

        //Mapi dolduruyoruz..
        for (Account acc : accList) {
            accMap.put(acc.id, acc);
        }

        //Accounta bagli olan create edilmis contactlari for each dongusune alip other Phone guncelliyoruz..
        for (Contact cn : conList) {
            cn.OtherPhone = accMap.get(cn.accountId).phone;
        }
    }

    public static void contactOtherPhone2(List<Contact> triggerNew) {
        //insert edilen tum contactlardan bir accounta bagli olanlari secelim..
        set<id> conIds = new set<id>();

        for (contact con : triggerNew) {
            if (con.AccountId != null) {
                conIds.add(con.id);
            }
        }

        //Bir Accounta bagli olan tum contactactlari accountun(parent) phone ile beraber SOQL yapalim..
        List<Contact> conList = [select id, otherPhone, account.phone from Contact where id IN :conIds];

        //Bu listeyi bir for each dongusunun icine alip otherPhone guncellemesini yapalim..
        for (Contact con : conList) {
            con.otherPhone = con.account.phone;
        }

        if (!conList.isEmpty()) {
            update conList;
        }
    }
}
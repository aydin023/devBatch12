public class AccountTriggerHandlerTR {
    public static void createContact(List<Account> accTriggernew) {
        List<Contact> conList = new List<Contact>();
        for (account acc : accTriggernew) {
            for (Integer i = 1; i <= 7; i++) {
                contact c = new contact();
                c.FirstName = acc.name;
                c.LastName = 'Contact ' + i;
                c.AccountId = acc.id;
                conList.add(c);
            }
        }

        insert conList;
    }
    public static void updateName(List<Account> triggerNew, Map<Id, Account> triggerOldMap) {
        for (account acc : triggerNew) {
            if (acc.name != triggerOldMap.get(acc.id).name) {
                acc.Description = 'Bu recordda isim degisikligi oldu..';
            }
        }
    }
}
public class AccountTriggerHandlerTR {
    public static void updateName(list<account> triggerNew, 
                                  Map<id, Account> triggerOldMap ) {
        for (account acc : triggerNew) {
            if (acc.name != triggerOldMap.get(acc.id).Name) {
                acc.Description = 'Bu record da ism degiskligi oldu ';
            }
        }
    }
}

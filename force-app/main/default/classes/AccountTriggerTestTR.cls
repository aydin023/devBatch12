@istest
public class AccountTriggerTestTR {
    @istest
    private static void AccountTriggerTest() {
        account acc = new Account();
        acc.Name = 'Demo';
        insert acc;

        acc.name = 'Demo Update';
        update acc;
    }
}
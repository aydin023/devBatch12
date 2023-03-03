@isTest
public class Batch12demoTest {
    @isTest
    private static void printWelcomeTest() {
        Batch12demo.printWelcome();
    }

    @isTest
    private static void welcomePersonTest() {
       Batch12demo.welcomePerson('Enes'); 
    }

    @isTest
    private static void toplamaTest() {
        // integer a = 11;
        // Integer b = 22;
        // Batch12demo.toplama(a, b);
        integer sum = Batch12demo.toplama(11, 22);
        System.assertEquals(33, sum);
    }
    @isTest
    private static void createAccountTest() {
        Batch12demo.createAccount();
        List<Account> accList = [select id, name from account WHERE name = 'Test'];
        System.assert(accList.size()>0);
        System.assertEquals(1, accList.size());
        System.assertEquals('Test', accList[0].Name);
    }
    @isTest
    private static void updateAccountTest() {
        account ac = new Account();
        ac.Name = 'Salesforce';
        insert ac;

        Batch12demo.updateAccount();
        account acc = [select id, name from account where name = 'Salesforce INC.' LIMIT 1];
        System.assertEquals('Salesforce INC.', acc.name);
    }
    @isTest
    private static void createContactFromAccountTest() {
        account ac = new Account();
        ac.Name = 'Softinnovas Inc.';
        insert ac;
        Batch12demo.createContactFromAccount();

        List<Contact> conList = [select id, lastName from Contact where name = 'Contact' ];
        System.assertEquals(1, conList.size());
    }
}

public class Batch12demo {
    public static void printWelcome() {
        System.debug('Hosgeldiniz => ');
    }
    public static void welcomePerson(string nm) {
        System.debug('hosgeldiniz '+ nm);
    }
    public static Integer toplama(integer a, integer b) {
        // integer sum = a + b;
        // return sum;
        return a + b;
    }
    public static void createAccount() {
        account acc = new account();
        acc.Name = 'Test';
        insert acc;
    }
    public static void updateAccount() {
        Account acc = [select id, name from account where name = 'Salesforce' limit 1];

        acc.Name = 'Salesforce INC.';
        update acc;
    }
    public static void createContactFromAccount() {
        account acc = [select id, name from account where name = 'Softinnovas Inc.' LIMIT 1];

        contact con = new Contact();
        con.LastName = 'Contact';
        con.AccountId = acc.id; //connection to account
        insert con;


    }
}

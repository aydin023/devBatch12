public class Queuable121 implements Queueable{
    //public olarak account soql yapip istenen recordlari getirebiliriz..
    public static List<Account> accList = [select id, name, AnnualRevenue from account where AnnualRevenue = 10000];


    //execute
    public void execute(QueueableContext contex){
        System.debug('Queuable121 calisti..');
        //account listesini bir for each dongusunun icine alip tek tek her account icin bir contact create edip baglayalim..
        List<Contact> conList = new List<Contact>();
        if (!accList.isEmpty()) {
            for (account ac : accList) {
                contact c = new contact();
                c.LastName = 'Queuable121 Test';
                c.AccountId = ac.id;
                conList.add(c);
            }
            insert conList;
        }
    }
}
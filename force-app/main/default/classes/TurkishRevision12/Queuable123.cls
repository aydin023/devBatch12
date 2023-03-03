public class Queuable123 implements Queueable{
    //Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source leri 'Partner Referal' olanların Description kısmına 'Queuable chain' yazın.. 
    public List<Account> listAcc = [select id, name, (select id, Description from Contacts where leadSource = 'Partner Referal') from account where AnnualRevenue = 10000];

    public void execute(QueueableContext contex){
        System.debug('Queuable123 calisti..');
        List<Contact> conList = new List<Contact>();
        for (account acc : listAcc) {
            conList.addAll(acc.Contacts);
        }
        for (contact c : conList) {
            c.Description = 'Queueable chain';
        }
        update conList;
    }
}
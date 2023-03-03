public  class Queuable122 implements Queueable {
    //Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source ni 'Partner Referal' yapın..
    //soql ile islem yapilacak recordlari cagirmam gerekiyor.
    public List<Account> accList = [ select id, name, (select id, LeadSource from Contacts) from account where AnnualRevenue = 10000];

    //execute
    public void execute(QueueableContext contex){
        System.debug('Queuable122 calisti');
        List<Contact> conList = new List<Contact>();
        for (account ac : accList) {
            conList.addAll(ac.contacts);
        }
        for (contact cn : conList) {
            cn.LeadSource = 'Partner Referal';
        }
        update conList;
        system.enqueueJob(new Queuable123());
    }
}
public class Batch12 implements Database.Batchable<SObject>{
    //Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..
    //start
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, AnnualRevenue from Account]);
        return q1;
    }

    //execute
    public void execute(Database.BatchableContext bc, List<Account> scope){
        List<Account> updateAccounts = new List<Account>();
        for (account acc : scope) {
            //name fieldi en fazla 40 karakter alabiliyor.. fazla karakter girilince hata verir bu hataya engel olmak icin if kullanilabilir..
            // if (acc.name.length < 30) {
            //     acc.name += ' update';
            // }
            acc.name += ' update';
            //acc.name = acc.name + ' update';
            if (acc.AnnualRevenue == null) {
                acc.AnnualRevenue = 10000;
            }
            updateAccounts.add(acc);
        }
        update updateAccounts;
    } 

    //finish
    public void finish(Database.BatchableContext bc){
        System.debug('islem bitti..');
        // Queuable121 abc = new Queuable121();
        // System.enqueueJob(abc);
        ID jobId = System.enqueueJob(new Queuable121());
        //System.debug(jobId);
    }
}
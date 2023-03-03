public class BatchApex12 implements Database.Batchable<SObject>{
    //Tum Accountlarin isimlerinin sonuna batch 12 ekleyelim..
 
    //start: tum data buraya cagrilir ve return edilir execute metoduna
    public Database.QueryLocator start(Database.BatchableContext bc){
     string query = 'Select id, name from Account';
     return Database.getQueryLocator(query);
    }
 
    //execute: belirlene sayilarla recordlarla parca parca istenen islem yapilir.
    public void execute(Database.BatchableContext bc, List<Account> scope){
         for (account ac : scope) {
             ac.Name = ac.name + ' batch 12';
         }
         try {
             update scope;
         } catch (Exception e) {
             System.debug(e);
         }
         
    }
 
    //finish: tum islem bittiginde 1 kere calisir.. mesaj veya mail atabilirsiniz..
    public void finish(Database.BatchableContext bc){
         System.debug('islem bitti');
         
         AsyncApexjob a = [select id, Status,NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.email from AsyncApexjob where id =:bc.getJobId()];
 
         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
         String[] toAdresses = new String[]{'', 'aydin8387@gmail.com', '', '', '', ''};
         mail.setToAddresses(toAdresses);
         mail.setSubject('Apex Sharing Recalculation ' + a.status);
         mail.setPlainTextBody(System.label.testingMail
         + '\n' + 'The batch apex job processed ' + a.TotalJobItems + '\n' + 'batches with ' + a.NumberOfErrors + ' failures');
         Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
    }

    //execute with anonymous part (.y.)
 }
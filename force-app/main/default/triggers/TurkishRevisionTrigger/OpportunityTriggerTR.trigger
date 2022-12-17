trigger OpportunityTriggerTR on Opportunity (before insert, after insert, before update, after update) {
         // soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin vermesin ve hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını versin.

         if (trigger.isBefore && trigger.isUpdate) {
            for (opportunity opp : trigger.new) {
                if (opp.StageName == 'Closed Lost' && opp.StageName != trigger.oldMap.get(opp.Id).StageName) {
                    opp.Description = 'Cok uzgunuz ...';
                }
                if (opp.StageName == 'Closed Won' && opp.StageName != trigger.oldMap.get(opp.id).StageName) {
                    opp.Description = 'Oleeeey  ( Y )';
                }
                if (opp.StageName == 'Prospecting' && opp.StageName != trigger.oldMap.get(opp.id).StageName) {
                    opp.StageName.addError('Boyle yapilmaz ');
                }
            }
         }
    


         
    
    
        
    
        
        
        
        // if (trigger.isBefore && trigger.isInsert) {
        //     System.debug('===Before insert Trigger Tetiklendi==');
        //     System.debug('Trigger new = '+ Trigger.new);
        //     System.debug('Trigger new = '+ Trigger.old);
        //     System.debug('Trigger new = '+ Trigger.newMap);
        //     System.debug('Trigger new = '+ Trigger.oldMap);
        //     System.debug('========END=======');
        // }
        // if (trigger.isAfter && trigger.isInsert) {
        //     System.debug('===After INSERt Trigger Tetiklendi==');
        //     System.debug('Trigger new = '+ Trigger.new);
        //     System.debug('Trigger new = '+ Trigger.old);
        //     System.debug('Trigger new = '+ Trigger.newMap);
        //     System.debug('Trigger new = '+ Trigger.oldMap);
        //     System.debug('========END=======');
        // }
        // if (trigger.isBefore && trigger.isUpdate) {
        //     System.debug('=== BEFORE UPDATE Trigger Tetiklendi==');
        //     System.debug('Trigger new = '+ Trigger.new);
        //     System.debug('Trigger new = '+ Trigger.old);
        //     System.debug('Trigger new = '+ Trigger.newMap);
        //     System.debug('Trigger new = '+ Trigger.oldMap);
        //     System.debug('========END=======');
        // }
        // if (trigger.isAfter && trigger.isUpdate) {
        //     System.debug('===AFTER UPDATE Trigger Tetiklendi==');
        //     System.debug('Trigger new = '+ Trigger.new);
        //     System.debug('Trigger new = '+ Trigger.old);
        //     System.debug('Trigger new = '+ Trigger.newMap);
        //     System.debug('Trigger new = '+ Trigger.oldMap);
        //     System.debug('========END=======');
        // }
}
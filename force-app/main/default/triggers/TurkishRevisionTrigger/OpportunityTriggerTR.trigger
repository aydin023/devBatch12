trigger OpportunityTriggerTR on Opportunity (before insert, after insert, before update, after update, after delete ,after undelete) {
            //Bir opportunity(insert, update, delete, undelete) nin Amount update edildiğinde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
    if (trigger.isAfter) {
        //Bu yapilan Dml isleminden etkilenen accountlarin idlerini bir set yapida olusturalim..
        Set<id> accIds = new Set<id>();
        if (trigger.isInsert || trigger.isUndelete) {
            for (opportunity op : trigger.new) {
                if (op.AccountId != null && op.Amount != null) {
                    accIds.add(op.AccountId);
                }
            }
        }

        if (trigger.isUpdate) {
            for (Opportunity op : trigger.new) {
                if (op.AccountId != trigger.oldMap.get(op.id).AccountId || op.Amount != trigger.oldMap.get(op.id).Amount) {
                    accIds.add(op.AccountId);
                    accIds.add(trigger.oldMap.get(op.id).AccountId);
                }
            }
        }

        if (trigger.isDelete) {
            for (opportunity op : trigger.old) {
                if (op.AccountId != null && op.Amount != null) {
                    accIds.add(op.AccountId);
                }
            }
        }

        if (!accIds.isEmpty()) {
            List<Account> accList = [select id, name, description, (select id, name, amount from Opportunities) from account where id IN :accIds];

            for (account acc : accList) {
                Decimal totalAmount = 0;
                if (acc.Opportunities.size() == 0) {
                    acc.Description = null;
                } else {
                    for (opportunity op : acc.Opportunities) {
                        totalAmount += op.Amount;
                    }
                    acc.Description = 'Bu accounta bagli opportunitylerin amountlari toplami = ' + totalAmount;
                }
                
            }
            update accList;
        }

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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
trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
      
    List<Account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('UPDATE Record in after insert : '+ accTriggerNew);
        System.debug('UPDATE # of records inserted : '+ accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            System.debug('UPDATE acc id is '+ eachAcc.id + ' acc name is '+ eachAcc.Name);
        }
    }   



    if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('Before Record in after insert : '+ accTriggerNew);
        System.debug('Before # of records inserted : '+ accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            System.debug('Before acc id is '+ eachAcc.id + ' acc name is '+ eachAcc.Name);
        }
    }    


        
        if (Trigger.isAfter && Trigger.isInsert) {
            System.debug('Record in after insert : '+ accTriggerNew);
            System.debug('# of records inserted : '+ accTriggerNew.size());
            for (account eachAcc : accTriggerNew) {
                System.debug('acc id is '+ eachAcc.id + ' acc name is '+ eachAcc.Name);
            }
        }   




    // if (Trigger.isAfter && Trigger.isInsert) {
    //     System.debug('record in after insert : ' +trigger.new);
    // }

    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('account Before Insert trigger called.');
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('account After Insert trigggger called. yeah');
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('account Before update trigger called.');
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('account After update trigggger called. yeah');
    // }


    /*
    //when we insert record - trigger.isinsert will be true.
    if (Trigger.isInsert) {
        system.debug('account before insert trigger called');    
    }
    //when we update record - trigger.isUpdate will be true.
    if (Trigger.isUpdate) {
        system.debug('account before update trigger called');    
    }*/


    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }*/
    
    
}
trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    System.debug('=========trigger tetiklendi..============');
    //insert durumunda bu mesaj kac defa gelir.
    // System.debug('trigger.isBefore => ' + trigger.isBefore);
    // System.debug('trigger.isAfter => ' + trigger.isAfter);
    // System.debug('trigger.isInsert => ' + trigger.isInsert);
    // System.debug('trigger.isUpdate => ' + trigger.isUpdate);
    if(trigger.isBefore && trigger.isInsert){
        system.debug('Before Insert durumunda bu kod calisir..');
        List<Account> triggerNew = trigger.new;
        System.debug('trigger new => ' + triggerNew);
        //System.debug(triggerNew.name);boyle ulasilmaz cunku bu bir liste..
        for(account acc : triggerNew){
            System.debug(acc.Name);
            System.debug(acc.Id);
        }
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('After Insert durumunda bu kod calisir..');
        System.debug('trigger new => ' + trigger.new);
        for(account acc : trigger.new){
            System.debug(acc.Name);
            System.debug(acc.Id);
        }
    }
    //yukaridaki if in farkli bir kullanimi.. ayni sonucu verir..
    /*if(trigger.isBefore ){
        if(trigger.isInsert){
        system.debug('Before Insert durumunda bu kod calisir..');
        }
    }*/
    if(trigger.isBefore && trigger.isUpdate){
        System.debug('Before Update durumunda bu kod calisir..');
        System.debug('trigger new => ' + trigger.new);
    }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('After Update durumunda bu kod calisir..');
        System.debug('trigger new => ' + trigger.new);
    }
    System.debug('========= triggerin calismasi bitti=======');

}
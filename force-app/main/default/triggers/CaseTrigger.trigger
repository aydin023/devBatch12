trigger CaseTrigger on Case (before insert, before update) {
   if (trigger.isUpdate) {
    System.debug('Before update trigger run');
    CaseTriggerHandler.countTriggerExecution ++;
    System.debug('# of times trigger run => '+ CaseTriggerHandler.countTriggerExecution ++);
    
    CaseTriggerHandler.countRecordsUpdated += trigger.size;
    System.debug('# of time records updated => '+ CaseTriggerHandler.countRecordsUpdated);
    }

}
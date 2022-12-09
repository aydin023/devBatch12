trigger AccountTrigger on Account (before insert, before update) {
    System.debug('Account before insert trigger called');
    System.debug('account before update trigger called =>');



    // if (Trigger.isBefore) {
    //     System.debug('Account before insert trigger called');
    // }
    // if (Trigger.isAfter) {
    //     System.debug('account after insert called !@#$%^');
    // }

}
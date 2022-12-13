trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    if (Trigger.isBefore) {
        System.debug('we are in before trigger');
        if (Trigger.isInsert) {
            System.debug('we are in before insert');
        }
        if (Trigger.isUpdate) {
            System.debug('We are before uptade trigger ');
        }
    }

    if (trigger.isAfter) {
        System.debug('we are in after trigger');
        if (Trigger.isInsert) {
            System.debug('we are in after INSERT');
        }
        if (Trigger.isUpdate) {
            System.debug('we are in after UPDATE');
        }
    }

}
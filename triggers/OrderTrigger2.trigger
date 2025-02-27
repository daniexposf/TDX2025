trigger OrderTrigger2 on Order (before update, after update) {
    if (Trigger.isBefore)
        System.debug('Trigger 2: before');
    else
        System.debug('Trigger 2: after');
}
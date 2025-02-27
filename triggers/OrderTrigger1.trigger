trigger OrderTrigger1 on Order (before update, after update) {
    if (Trigger.isBefore)
        System.debug('Trigger 1: before');
    else
        System.debug('Trigger 1: after');
}
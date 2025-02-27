trigger OrderTrigger3 on Order (before update, after update) {
    if (Trigger.isBefore)
        System.debug('Trigger 3: before');
    else
        System.debug('Trigger 3: after');
}
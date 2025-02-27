trigger OrderTrigger on Order (after update) {
    if (Trigger.isBefore) {
        System.debug('Before 1');
        System.debug('Before 2');
        System.debug('Before 3');
    } else {
        System.debug('After 1');
        System.debug('After 2');
        System.debug('After 3');
    }

}
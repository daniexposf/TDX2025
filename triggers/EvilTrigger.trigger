trigger EvilTrigger on Order (before update) {
    for (Order newDto : Trigger.new)
        newDto.Description = 'Reviewed on ' + System.today();
}

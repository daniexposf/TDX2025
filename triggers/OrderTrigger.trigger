trigger OrderTrigger on Order (after update) {
    for (Order newDto : Trigger.new) {
        Order oldDto = Trigger.OldMap.get(newDto.Id);

        if (oldDto.status == 'Activated' && newDto.Description != oldDto.Description)
            newDto.AddError('You cannot modify the Description on an activated Order');
    }
}

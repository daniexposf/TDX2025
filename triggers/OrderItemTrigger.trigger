trigger OrderItemTrigger on OrderItem (after update) {
    if (!Context.isBypassTrigger())
        throw new OrderService.OrderItemException('Order Items cannot be updated.');
}
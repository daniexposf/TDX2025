public with sharing class ApplyDiscount {
    @InvocableMethod(label='Apply Discount' description='Apply a special discount of 15% to a given order')
    public static List<String> applySpecialDiscount(List<Id> orderIds) {
        try {
            if (!orderIds.isEmpty()) {
                OrderService.applySpecialDiscount(orderIds);
                setDiscountDate(orderIds);
                return new List<String>{'Discount applied successfully'};
            } else {
                return new List<String>{'The discount cannot be applied'};
            }
        }
        catch (Exception e) {
            return new List<String>{e.getMessage()};
        }
    }
    
    public static void setDiscountDate(List<Id> orderIds) {
    	List<OrderItem> orderItems = [SELECT Id, UnitPrice FROM orderItem WHERE OrderId IN :orderIds];
    	for(OrderItem item : OrderItems) {
        	item.Description = 'Discount applied on ' + System.today();
    	}
    	update orderItems;
	}

}
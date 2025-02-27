global with Sharing class OrderService {
    private static Integer discountPercentage = 15;

    global static void applySpecialDiscount(List<Id> orderIds) {
        try {
            Context.setBypassTrigger(true);
            applyDiscount(orderIds);
			performAnotherActionThatFails();
        } catch(Exception e) {
            System.debug('Unexpected Error');
        }
        finally {
            Context.setBypassTrigger(false);
        }

    }
    private static void applyDiscount(List<Id> orderIds) { }
    private static void performAnotherActionThatFails() {
        throw new OrderService.OrderItemException('Ooops');
    }

    public class OrderItemException extends Exception {}
}
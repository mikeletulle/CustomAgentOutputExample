public class GetOrderStatusAction {
    public class ActionInput {
        @InvocableVariable(required=true)
        public String orderNumber;
    }

    public class ActionOutput {
        @InvocableVariable
        public OrderStatusOutput orderStatus;
    }

    @InvocableMethod(label='Get Order Status')
    public static List<ActionOutput> getOrderStatus(List<ActionInput> inputs) {
        List<ActionOutput> results = new List<ActionOutput>();

        for (ActionInput input : inputs) {
            ActionOutput out = new ActionOutput();
            out.orderStatus = new OrderStatusOutput(
                input.orderNumber,
                'Shipped',
                150.00,
                'Oct 25'
            );
            results.add(out);
        }
        return results;
    }
}

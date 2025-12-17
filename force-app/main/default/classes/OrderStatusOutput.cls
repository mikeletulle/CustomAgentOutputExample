@JsonAccess(serializable='always' deserializable='always')
public class OrderStatusOutput {
    
    // Add @InvocableVariable so the Agent/Action can see these fields
    @AuraEnabled @InvocableVariable 
    public String orderNumber;
    
    @AuraEnabled @InvocableVariable 
    public String status;
    
    @AuraEnabled @InvocableVariable 
    public Decimal totalAmount;
    
    @AuraEnabled @InvocableVariable 
    public String estimatedDelivery;
    
    // REQUIRED: You must have an empty constructor for Invocable classes
    public OrderStatusOutput() {}

    // Your existing constructor for convenience
    public OrderStatusOutput(String ordNum, String stat, Decimal amt, String del) {
        this.orderNumber = ordNum;
        this.status = stat;
        this.totalAmount = amt;
        this.estimatedDelivery = del;
    }
}    

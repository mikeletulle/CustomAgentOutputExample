import { LightningElement, api } from 'lwc';

export default class OrderStatusRenderer extends LightningElement {
    // The Agent passes the entire object into this 'value' property
    @api value;

    get isShipped() {
        return this.value?.status === 'Shipped';
    }
} 
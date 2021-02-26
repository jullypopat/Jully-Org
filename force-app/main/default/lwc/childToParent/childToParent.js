import { LightningElement, api } from 'lwc';

export default class childToParent extends LightningElement {
    @api percentage = 50;

    handlePercentageChange(event) {
        this.percentage = event.target.value;
    }
}
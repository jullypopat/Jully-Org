import { LightningElement, api } from 'lwc';

export default class ChartBar extends LightningElement {
    // @api percentage;

    // handlePercentageChanges(event) {
    //     this.percentage = event.target.value;
    // }

    // get style() {
    //     return `width: ${this.percentage}%`;
    // }
    upperCase;

    @api
    handleChangeNameToUpperCase(name) {
        this.upperCase = name.toUpperCase();
    }
}
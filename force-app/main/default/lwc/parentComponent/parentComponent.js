/* eslint-disable no-console */
import { LightningElement, track, api } from 'lwc';
//import pubsub from 'c/pubsub' ; 

export default class ParentComponent extends LightningElement {
    @api value;
    @track start = 0;
    @track Location;
  //   startLocation(event) {
  //   this.start = event.detail;
  // }
  picklistchange(event){
    debugger
    //var selectedvalue = event.detail;
    this.Location=event.detail;
    console.log("selectedvalue-->",this.Location);
  }

}
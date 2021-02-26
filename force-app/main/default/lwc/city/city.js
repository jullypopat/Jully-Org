import { LightningElement, track } from 'lwc';
export default class City extends LightningElement {
      @track value;
      get options() {
        return [
                 { label: 'Noida', value: 'Noida' },
                 { label: 'Hyderabad', value: 'Hyderabad' },
                 { label: 'Mumbai', value: 'Mumbai' },
               ];
    }
    
    
    handleChange(event) {
        debugger
        this.value = event.detail.value;
        const selectedEvent = new CustomEvent("handlechangeclick",{
            detail: this.value
        })
           this.dispatchEvent(selectedEvent);
         }   
  
    

}
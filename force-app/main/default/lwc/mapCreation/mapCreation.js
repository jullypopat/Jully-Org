import { LightningElement,track } from 'lwc';

export default class MapCreation extends LightningElement {
    @track location;
    
    renderedCallback()
    {
        mapMarkers = [{
            location: {
                City: this.location,
            }
            },
        ];
        console.log("location->",this.location);
    }
       
}
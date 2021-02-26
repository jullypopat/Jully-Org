import { LightningElement, track } from 'lwc';
import NAME_Field from '@salesforce/schema/Account.Name';
import sObjectName from '@salesforce/schema/Account';
//import getContactList from '@salesforce/apex/ContactController';
    export default class helloWorld extends LightningElement {
        @track greeting = 'World';
        @track name=NAME_Field;
        @track ObjectName=sObjectName;
       
        contacts=[
            {
                Id:'00909290344',
                Name:'a',
                Title:'S1',
            },
            {
                Id:'00909298344',
                Name:'b',
                Title:'S2',
            },
            {
                Id:'00909000344',
                Name:'c',
                Title:'S3',
            },
        ]; 
        changeHandler(event) {
            this.greeting = event.target.value;
        }
    }
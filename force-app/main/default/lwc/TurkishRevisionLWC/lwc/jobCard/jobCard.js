import LastName from '@salesforce/schema/AccountChangeEvent.LastName';
import { LightningElement } from 'lwc';

export default class JobCard extends LightningElement {
    //aciklama satiri
    firstName;
    lastName;
    role;

    handleChange(event){
        if (event.target.label === "First Name") {
            this.firstName = event.target.value;
        }else if (event.target.label === "Last Name") {
            this.lastName = event.target.value;
        }else {
            this.role = event.target.value;
        }
    }
    // handleChange(event){
    //     this.firstName=event.target.value;

    // }
    // handleChange2(event){
    //     this.lastName = event.target.value;
    // }

    options = [
        {label: 'Salesforce Admin', value:'Salesforce Admin'},
        {label: 'Salesforce Developer', value:'Salesforce Developer'},
        {label: 'Salesforce Architect', value:'Salesforce Architect'}
    ]

    // handlaChange3(event){
    //     this.role = event.target.value;
    // }
}
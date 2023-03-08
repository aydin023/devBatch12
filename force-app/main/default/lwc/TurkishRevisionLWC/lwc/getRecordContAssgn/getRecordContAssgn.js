import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { api, LightningElement, wire } from 'lwc';


import NAME_FIELD from '@salesforce/schema/Contact.Name';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';


const FIELDS = [NAME_FIELD, TITLE_FIELD, PHONE_FIELD,EMAIL_FIELD]

export default class GetRecordContAssgn extends LightningElement {
    @api recordId;
    conName;
    title;
    phone;
    email;
    


    @wire(getRecord, { recordId: '$recordId', fields: FIELDS})
    recordHandler({data, error}){
        if (data) {
            console.log(data)
            this.conName = data.fields.Name.value;
            this.title = data.fields.Title.value;
            this.phone = data.fields.Phone.value;
            this.email = data.fields.Email.value;

            // this.phone = getFieldValue(data, PHONE_FIELD)
        }
        if (error) {
            console.error(error);
        }
    }
}
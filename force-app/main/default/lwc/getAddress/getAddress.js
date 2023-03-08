import { api, LightningElement, wire } from 'lwc';
import STREET_FIELD from '@salesforce/schema/Contact.MailingStreet';
import CITY_FIELD from '@salesforce/schema/Contact.MailingCity';
import STATE_FIELD from '@salesforce/schema/Contact.MailingState';
import COUNTRY_FIELD from '@salesforce/schema/Contact.MailingCountry';
import POSTAL_FIELD from '@salesforce/schema/Contact.MailingPostalCode';
import { getFieldValue, getRecord } from 'lightning/uiRecordApi';


export default class GetAddress extends LightningElement {
    isData = false

    @api recordId;
    street;
    city;
    country;
    province;
    postal;

    @wire(getRecord, {recordId: '$recordId',layoutTypes:['Full'] })
    contact({data,error}){
        if (data) {
            this.isData = true;
            console.log('Data => ', data);
            this.street = getFieldValue(data,STREET_FIELD);
            this.city = getFieldValue(data, CITY_FIELD);
            this.country = getFieldValue(data, COUNTRY_FIELD);
            this.province = getFieldValue(data,STATE_FIELD);
            this.postal = getFieldValue(data, POSTAL_FIELD);
        }
        if (error) {
            console.error(error);
        }
    }
}
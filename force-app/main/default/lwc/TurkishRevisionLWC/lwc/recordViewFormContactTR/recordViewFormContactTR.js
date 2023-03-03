import { api, LightningElement } from 'lwc';

// import Contact from '@salesforce/schema/Contact';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';



export default class RecordViewFormContactTR extends LightningElement {
    @api objectApiName;
    @api recordId;

    fields={
        firstName: FIRSTNAME_FIELD,
        lastName: LASTNAME_FIELD,
        title: TITLE_FIELD,
        leadSource: LEADSOURCE_FIELD
    }
}
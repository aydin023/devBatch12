import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';


export default class ContactRecordFormTR extends LightningElement {
    objectName=CONTACT_OBJECT;
    conFields = [FIRSTNAME_FIELD, LEADSOURCE_FIELD, LASTNAME_FIELD, TITLE_FIELD];
    recordID= "003Do000008qfStIAI"
}
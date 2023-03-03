import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOUNT_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACTPHONE_FIELD from '@salesforce/schema/Case.ContactPhone';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';

export default class LightiningRecordFormCase extends LightningElement {
    recordId = "500Do000002YgeOIAS";
    objectName = CASE_OBJECT;
    fields = [ACCOUNT_FIELD,CONTACTPHONE_FIELD, SUBJECT_FIELD, DESCRIPTION_FIELD, PRIORITY_FIELD, ORIGIN_FIELD];

    successHandler(){
        const successToast = new ShowToastEvent({
            title: 'Success!',
            message: 'Record  created!',
            variant: 'Success'
        })
        this.dispatchEvent(successToast);
    }
}





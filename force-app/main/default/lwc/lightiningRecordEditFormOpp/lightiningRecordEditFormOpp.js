import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import OPP_OBJECT from '@salesforce/schema/Opportunity';
import ACCOUNT_FIELD from '@salesforce/schema/Opportunity.AccountId';

import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';

export default class LightiningRecordEditFormOpp extends LightningElement {
    recordId = "006Do000002hRYsIAM";
    objectName = OPP_OBJECT;

    fields = {
        account: ACCOUNT_FIELD,
        type: TYPE_FIELD,
        amount: AMOUNT_FIELD,
        name: NAME_FIELD,
        stage: STAGE_FIELD,
        closeDate: CLOSEDATE_FIELD
    }

    successHandler(){
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Oportunity has been saved successfully !",
            variant: "success" //color giver

        });
        this.dispatchEvent(successToast);
    }
}
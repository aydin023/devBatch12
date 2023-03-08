import { api, LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import FAX_FIELD from '@salesforce/schema/Account.Fax';
import OWNERSHIP_FIELD from '@salesforce/schema/Account.Ownership';





export default class RecordEditFormAccountTR extends LightningElement {
    @api objectApiName;
    @api recordId;

    isIndustry = false;
    isFax = false;
    isOwnership = false;


    fields = {
        name: NAME_FIELD,
        rating: RATING_FIELD,
        industry: INDUSTRY_FIELD,
        fax: FAX_FIELD,
        ownership: OWNERSHIP_FIELD
    }

    successHandler(){
        const evt = new ShowToastEvent({
            title: 'Account status',
            message: 'Created' + this.recordId,
            variant: 'success'

        });
        this.dispatchEvent(evt);
    }

    changeHandler(event){
        if (event.target.value === "Hot") {
            this.isIndustry=true;
            this.isFax = false;
            this.isOwnership = false;
        }else if (event.target.value === "Cold") {
            this.isIndustry=false;
            this.isFax = true;
            this.isOwnership = false;
        }else if (event.target.value === "Warm") {
            this.isIndustry=false;
            this.isFax = false;
            this.isOwnership = true;
        } else if (event.target.value === '') {
            this.isIndustry=false;
            this.isFax = false;
            this.isOwnership = false;
        }
    }
    
}
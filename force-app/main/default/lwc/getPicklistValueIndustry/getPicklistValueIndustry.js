import { LightningElement, wire } from 'lwc';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';

import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetPicklistValueIndustry extends LightningElement {

    defaultRtId;
    industyOptions = [];

    @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT})
    objectInfoHandler({data,error}){
        if (data) {
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);
        }
    }

    @wire(getPicklistValues, {fieldApiName: INDUSTRY_FIELD, recordTypeId: '$defaultRtId'})
    picklistHandler({data, error}){
        if (data) {
            console.log(data);
            this.industyOptions = data.values;
        }
        if (error) {
            console.error(error);
        }
    }
}
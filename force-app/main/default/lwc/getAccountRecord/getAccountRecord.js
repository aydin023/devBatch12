import { LightningElement, wire } from 'lwc';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import ANNUALREVENUE_FIELDS from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELDS from '@salesforce/schema/Account.Industry';
import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';

const FIELDS = [NAME_FIELD, ANNUALREVENUE_FIELDS, INDUSTRY_FIELDS];


export default class GetAccountRecord extends LightningElement {
    recordId = "001Do000002zHtwIAE";
    name;
    revenue;
    industry;

    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    recordHandler({data,error}){
        if (data) {
            this.name = getFieldValue(data, NAME_FIELD);
            this.revenue = getFieldDisplayValue(data, ANNUALREVENUE_FIELDS);
            this.industry = getFieldValue(data, INDUSTRY_FIELDS);
        }
        if (error) {
            console.error(error);
        }
    }
}
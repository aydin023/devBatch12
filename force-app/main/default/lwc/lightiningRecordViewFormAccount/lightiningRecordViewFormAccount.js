import { LightningElement } from 'lwc';

import ACCOUNT_OBJ from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';



export default class LightiningRecordViewFormAccount extends LightningElement {

    recordId = "001Do000003DzZCIA0";
    objectName = ACCOUNT_OBJ;

    fields = {
        name:NAME_FIELD,
        type:TYPE_FIELD,
        industry:INDUSTRY_FIELD,
        revenue:ANNUALREVENUE_FIELD,
        phone:PHONE_FIELD
    };
}
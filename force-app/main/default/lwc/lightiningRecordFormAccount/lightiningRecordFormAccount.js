import { LightningElement } from 'lwc';

import  ACCOUNT_OBJECT  from "@salesforce/schema/Account";
import NAME_FIEALD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';

export default class LightiningRecordFormAccount extends LightningElement {
    recordId = "001Do000003DzZCIA0";
    objectName = ACCOUNT_OBJECT;
    fields = [NAME_FIEALD, TYPE_FIELD, INDUSTRY_FIELD, REVENUE_FIELD,PHONE_FIELD ];
}
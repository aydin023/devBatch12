import { LightningElement, wire } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

import CASE_OBJECT from '@salesforce/schema/Case';

export default class GetObjectInfoCase extends LightningElement {
    caseCustId;
    caseEnqryId;

    @wire(getObjectInfo, {objectApiName:CASE_OBJECT})
    objectHandler({data, error}){
        if (data) {
            console.log(data);
            const recIDs = data.recordTypeInfos;
            //Customer support 
            this.caseCustId = Object.keys(recIDs).find(recID => recIDs[recID].name === "Customer Support");
            //Enquery
            this.caseEnqryId = Object.keys(recIDs).find(recID => recIDs[recID].name === "Enquiry");
        
        }
        if (error) {
            console.log(error);
        }
    }

}
import {LightningElement, wire } from 'lwc';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';

import OPP_OBJECT from '@salesforce/schema/Opportunity';

export default class GetPicklistValuesByRecordTypeOpportunity extends LightningElement {

    defaultRtId;
    stageOptions = [];
    sourceOptions = [];
    selectedStage;
    selectedSource;

    @wire (getObjectInfo, {objectApiName: OPP_OBJECT})
    objectInfoHandler({data, error}){
        if (data) {
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);
        }
    }
    @wire (getPicklistValuesByRecordType, {objectApiName: OPP_OBJECT, recordTypeId: '$defaultRtId'})
    picklistHandler({data, error}){
        if (data) {
            console.log(data);
            this.stageOptions = data.picklistFieldValues.StageName.values;
            this.sourceOptions = data.picklistFieldValues.LeadSource.values;
        }
        if (error) {
            console.error(error);
        }
    }

    changeHandler(event){
        if (event.target.name === "StageName") {
            this.selectedStage = event.target.value;
        }else {
            this.selectedSource = event.target.value;
        }
    }
}
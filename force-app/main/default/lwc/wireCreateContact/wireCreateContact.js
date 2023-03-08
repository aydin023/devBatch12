import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


import CONTACT_OBJECT from '@salesforce/schema/Contact';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import { createRecord } from 'lightning/uiRecordApi';



export default class WireCreateContact extends LightningElement {
    
    leadSourceOptions = [];
    conRtId;
    formData = {};
    
    changeHandler(event){
        // const name = event.target.name;
        // const value = event.target.value;
        const{name,value} = event.target;

        this.formData[name] = value;
        console.log('JSON => ', JSON.stringify(this.formData));
    }

    @wire(getObjectInfo,{objectApiName: CONTACT_OBJECT})
    contactInfo({data, error}){
        if (data) {
            console.log(data);
            this.conRtId = data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);
        }
    }

    @wire(getPicklistValues, {fieldApiName: LEADSOURCE_FIELD, recordTypeId: '$conRtId' })
    picklistHandler({data, error}){
        if (data) {
            this.leadSourceOptions = data.values;
        }
        if (error) {
            console.error(error);
        }
    }

    saveContact(){
        const recordInput = {
            apiName: CONTACT_OBJECT.objectApiName,
            fields: this.formData
        }
        createRecord(recordInput)
            .then(result => {
                console.log('result => ', result);
                const successToast = new ShowToastEvent({
                    title: "Success",
                    message: "Contact record has created",
                    variant: "success"
                });
                this.dispatchEvent(successToast);
                this.cancelContact(); // clear screen after save
                    
            })
            .catch(error =>{
                console.error(error);
            })
    }

    cancelContact(){
        this.template.querySelector('form.contactForm').reset();
        this.template.querySelector('lightning-combobox').value = undefined;
        this.formData = {};
    }
}
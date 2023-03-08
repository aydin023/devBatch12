import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DeleteRecordEmployee extends LightningElement {
    recId;

    changeHandler(event){
        this.recId = event.target.value;
    }

    deleteRec(){
        deleteRecord(this.recId)
        .then(result => {            
            this.prepareToast("Success", " Rec Has Been deleted", "success" );
        })
        .catch(error => {      
            this.prepareToast("Error", error.body.message , "error");

        })
        
    }

    prepareToast(title, message, variant){
        const toast = new ShowToastEvent({title, message, variant});
        this.dispatchEvent(toast);
    }
}



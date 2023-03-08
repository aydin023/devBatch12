import { LightningElement } from 'lwc';

export default class CreateRecordEmployer extends LightningElement {
    formdata = {};

    changeHandler(event){
        const {name, value} = event.target;
        this.formdata[name] = value;
    }
}






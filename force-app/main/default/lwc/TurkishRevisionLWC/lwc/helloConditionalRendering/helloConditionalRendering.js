import { LightningElement, track } from 'lwc';

export default class HelloConditionalRendering extends LightningElement {
    areDetailVisible = false;
    firstName = "Burak"
    @track location = {
        city: "Ankara",
        country: "Turkey",
        region: "Europe"
    }

    handleChange(event){
        if (event.target.label == "Show Detail") {
            this.areDetailVisible = event.target.checked;
        }else if (event.target.label == "First Name") {
            this.firstName = event.target.value;
        }else {
            this.location.city = event.target.value;
        }

        // this.areDetailVisible = event.target.checked;
    }

}
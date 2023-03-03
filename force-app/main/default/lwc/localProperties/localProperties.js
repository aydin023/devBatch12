import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name;  //undefined
    age = 31;
    fullname = "SalasForce Bala";
    location = {
        city: "California",
        country: 'USA',
        postalCode: '1234'
    };
    fruits = ["Orange", "Banana", "Pineapple"];
}
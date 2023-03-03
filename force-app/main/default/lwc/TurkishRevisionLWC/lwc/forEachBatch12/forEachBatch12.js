import { LightningElement } from 'lwc';

export default class ForEachBatch12 extends LightningElement {
    contacts = [
        {
            Id: 1,
            Name: 'Amy Taylor',
            Title: 'VP of Engineering'
        },
        {
            Id: 2,
            Name: 'Michael Jones',
            Title: 'VP of Sales'
        },
        {
            Id: 3,
            Name: 'Jennifer Wu',
            Title: 'CEO'
        },
    ];

    books = ["Sefiller", "1984", "Kapi", "Anna Karanina", "Tatar Çölü", "Cemile"];
}
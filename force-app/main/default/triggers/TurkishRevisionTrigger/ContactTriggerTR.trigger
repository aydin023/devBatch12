trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after delete, after undelete ) {
    /*Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..*/

//Bu islemden etkilenen tum accountlarin id lerini toplamam lazim. Set<id> yapisi icinde toparlayabilrim..
set<id> accountIds = new Set<id>();

//Contact islemi bittikten sonra bir Account fieldinde guncelleme olacak o yuzden after olmali
if (trigger.isAfter) {
    //Tum DML ihtimalleri icin if ler olusturuyorum..
    if (trigger.isInsert || trigger.isUndelete) {
        for (contact c : trigger.new) {
            //create/undelete durumunda accounta baglanmissa ilgili accountun id sini set yapinin icine ekliyoruz.
            if (c.AccountId != null) {
                accountIds.add(c.AccountId);
            }
        }
    }
    if (trigger.isUpdate) {
        for (contact c : trigger.new) {
            if (c.AccountId != trigger.oldMap.get(c.id).AccountId) {
                accountIds.add(c.AccountId);
                accountIds.add(trigger.oldMap.get(c.id).AccountId);
            }
        }
    }
    if (trigger.isDelete) {
        for (contact c : trigger.old) {
            if (c.AccountId != null) {
                accountIds.add(c.AccountId);
            }
        }
    }

    //accountIds icinde contact sayilari etkilenen tum accountlarin idleri var. Soql ile accountlari bagli olduklari contactlar ile beraber getiriyoruz.
    if (!accountIds.isEmpty()) {
        List<Account> accList = [select id, name, Number_Of_Contacts__c, (select id from Contacts) from Account where id in :accountIds];
        //Bu account listesini for dongusunun icine alip tek tek contact sayilarini bulup guncel degeri yerine yazalim.
        for (account acc : accList) {
            acc.Number_Of_Contacts__c = acc.Contacts.size();
        }
        update accList;
    }
}


























    /*if (trigger.isBefore && trigger.isInsert) {
        List<Contact> list1 = trigger.new;
        System.debug('trigger new = ' + list1);
        System.debug('record sayisi size = ' + list1.size());
        for (contact c : list1) {
            System.debug('first Name = ' + c.FirstName);
            System.debug('last Name = ' + c.LastName);
            System.debug('id = ' + c.id);
            System.debug('accountId = ' + c.AccountId);
        }

    }
    if (trigger.isAfter && trigger.isInsert) {
        List<Contact> list2 = trigger.new;
        System.debug('trigger new = ' + list2);
        System.debug('record sayisi size = ' + list2.size());
        for (contact c : list2) {
            System.debug('first Name = ' + c.FirstName);
            System.debug('last Name = ' + c.LastName);
            System.debug('id = ' + c.id);
            System.debug('accountId = ' + c.AccountId);
        }
    }*/
    /*if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before Update trigger tetiklendi..');
        List<Contact> list3 = trigger.new;
        System.debug('trigger new = ' + list3);
        System.debug('record sayisi size = ' + list3.size());
        for (contact c : list3) {
            System.debug('first Name = ' + c.FirstName);
            System.debug('last Name = ' + c.LastName);
            System.debug('id = ' + c.id);
            System.debug('accountId = ' + c.AccountId);
        }

        List<Contact> list33 = trigger.old;
        System.debug('trigger old = ' + list33);
        System.debug('record sayisi size = ' + list33.size());
        for (contact c : list33) {
            System.debug('first Name = ' + c.FirstName);
            System.debug('last Name = ' + c.LastName);
            System.debug('id = ' + c.id);
            System.debug('accountId = ' + c.AccountId);
        }

        System.debug('=========END=========');

    }
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('After Update trigger tetiklendi..');
        List<Contact> list4 = trigger.new;
        System.debug('trigger new = ' + list4);
        System.debug('record sayisi size = ' + list4.size());
        for (contact c : list4) {
            System.debug('first Name = ' + c.FirstName);
            System.debug('last Name = ' + c.LastName);
            System.debug('id = ' + c.id);
            System.debug('accountId = ' + c.AccountId);
        }
        List<Contact> list44 = trigger.old;
        System.debug('trigger old = ' + list44);
        System.debug('record sayisi size = ' + list44.size());
        for (contact c : list44) {
            System.debug('first Name = ' + c.FirstName);
            System.debug('last Name = ' + c.LastName);
            System.debug('id = ' + c.id);
            System.debug('accountId = ' + c.AccountId);
        }
        System.debug('=========END=========');
    }*/

    //Update durumunda eski first name ile yeni first name yan yana yazmak istersem..
    /*if (trigger.isBefore && trigger.isUpdate) {
        System.debug('trigger new = ' + trigger.new);
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger newMap = ' + trigger.newMap);
        System.debug('trigger oldMap = ' + trigger.oldMap);
        //version 1
        System.debug('Version 1');
        for (Contact c : trigger.new) {
            string oldFirstName = trigger.oldMap.get(c.id).FirstName;
            string newFirstName = trigger.newMap.get(c.id).FirstName;
            System.debug('Eski isim : ' + oldFirstName + ', Yeni isim : ' + newFirstName);
            string oldLastName = trigger.oldMap.get(c.id).LastName;
            string newLastName = trigger.newMap.get(c.id).LastName;
            System.debug('Eski soyad : ' + oldLastName + ', Yeni soyad : ' + newLastName);
        }
        //version 2
        System.debug('Version 2');
        for (Contact c : trigger.new) {
            System.debug('Eski isim : ' + trigger.oldMap.get(c.id).FirstName + ', Yeni isim : ' + c.FirstName);
            System.debug('Eski soyad : ' + trigger.oldMap.get(c.id).lastName + ', Yeni soyad : ' + c.LastName);
        }
        //version 3
        System.debug('Version 3');
        for (Contact c : trigger.old) {
            System.debug('Eski isim : ' + c.firstName + ', Yeni isim : ' + trigger.newMap.get(c.id).FirstName);
            System.debug('Eski soyad : ' + c.LastName + ', Yeni soyad : ' + trigger.newMap.get(c.id).LastName);
        }
    }*/
    
}
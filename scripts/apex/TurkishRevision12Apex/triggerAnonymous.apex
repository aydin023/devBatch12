List<Contact> conList = new List<Contact>();

Contact c1 = new contact();
c1.FirstName = 'Jhon';
c1.LastName = 'Doe';
conList.add(c1);

Contact c2 = new contact();
c2.FirstName = 'Marry';
c2.LastName = 'Doe';
conList.add(c2);

insert conList;

for (contact cn : conList) {
    cn.FirstName += ' Update';
    cn.LastName += ' Update';
}
update conList;





// account acc = new account();
// acc.name = 'Trigger test new';
// insert acc;
// acc.name = 'Trigger test new update';
// update acc;
Account acc = new Account();
acc.Name = 'Demo 12 Apex';
insert acc;

Account acc2 = [select id, name from account where name ='Demo 12 Apex' limit 1];
acc2.name = 'Demo 12 Apex Update ';
update acc2;

Account acc3 = [select id, name from account where name ='Demo 12 Apex Update' limit 1];
acc3.name = 'Demo 12 Apex Update New York :)';
update acc3;

Contact con = new Contact();
con.lastname = 'Demo 12 contact vsCode and Apex';
insert con;


Account acc4 = [select id, name from account where name = 'Demo 12 contact vsCode and Apex']
Contact con2 = [select id. lastname, accountid from contact where name = 'Demo 12 contact vsCode and Apex'];
con2.Accountid=acc4.id;
update con2;

List<Account> accList = new List<Account>();
Account acc5 = new Account();
acc5.Name = 'Batch 12 A';
accList.add(acc5);
// insert acc5;

Account acc6 = new Account();
acc6.Name = 'Batch 12 B';
accList.add(acc6);
// insert acc6;

Account acc7 = new Account();
acc7.Name = 'Batch 12 C';
accList.add(acc7);
// insert acc7;

insert accList;


List<Account> listAcc_var = new List<Account>();
for ( integer i=1 ;i<=100 ;i++){
    Account acc = new Account();
    acc.name = 'NEW batch AccounCreaTE '+ i;
    listAcc_var.add(acc);
}
insert listAcc_var;

List<Account> lAcc = [select id, name from account where name like  'NEW batch%' limit 99];
List<Contact> listCon = new List<contact>();
integer a = 1;
for(account acc : lAcc){
    Contact cn = new Contact();
    cn.lastname = 'Batch 12 CONTACT '+ a;
    a++;
    cn.Accountid = acc.id;
    listCon.add(cn);
    //insert cn;
}
if(!listCon.isEmpty()){
    insert listCon;
}


Dml12.createAccountsAndContacts(8);
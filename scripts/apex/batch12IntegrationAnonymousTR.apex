List<Account> listAcc = new List<Account>();

account acc1 = new Account();
acc1.Name = 'Integration Account 1';
acc1.AnnualRevenue = 100000;
acc1.Phone = '2222222';
listAcc.add(acc1);

account acc2 = new Account();
acc2.Name = 'Integration Account 2';
acc2.AnnualRevenue = 200000;
acc2.Phone = '2222222';
listAcc.add(acc2);

System.debug(listAcc);

//listemizi JSON formata cevirelim..
string listAccJson = JSON.serialize(listAcc);
System.debug(listAccJson);

//listemizi JSON formattan tekrar Account recordlari haline getirelim..
List<Account> accListNew = (List<Account>)JSON.deserialize(listAccJson, List<Account>.class);
System.debug('JSON formattan Account recorduna dondurulmus data => ' + accListNew);

//Case objesinden Contactlara bagli olan 2 tane case recordu getirelim. CaseNumber, Subject, Description, Contact.FirstName, Contact.LastName, Account.Name bilgileri ile beraber gelsin ve bu record bilgilerini JSON formata cevirelim..
List<Case> caseList = [select id, caseNumber, Subject, Description, Contact.firstName, Contact.Name, Account.Name from Case where contactId != null and accountId != null limit 2];
string caseListJson = JSON.serialize(caseList);
System.debug(caseListJson);
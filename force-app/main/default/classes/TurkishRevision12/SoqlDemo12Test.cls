@istest
public class SoqlDemo12Test {

@TestSetup
static void makeData(){
    List<Account> listAcc = new List<Account>();

        account acc = new account();
        acc.Name = 'SoftInnovas Inc.';
        listAcc.add(acc);

        account acc1 = new Account();
        acc1.name = 'Test1';
        acc1.Industry = 'Education';
        listAcc.add(acc1);

        account acc2 = new Account();
        acc2.name = 'Test2';
        acc2.Industry = 'Energy';
        listAcc.add(acc2);

        insert listAcc;
}

    @istest
    private static void accountIndustryOfEducationTest() {
        test.startTest();
        integer sz = SoqlDemo12.accountIndustryOfEducation('Education');
        test.stopTest();
        system.assertEquals(1, sz);
    }

    @istest
    private static void dmlInsertDemo_4Test() {

        test.startTest();
        SoqlDemo12.dmlInsertDemo_4();
        test.stopTest();
        
         contact cn = [select id, lastName from contact where lastName = 'Biden' limit 1];
         System.assert(cn.lastName == 'Biden');
    }
}
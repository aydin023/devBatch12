public class Dml12 {
    //metodumuz 5 tane account create etsin. Her accounta bagli 5 tanede contact create etsin..
    public static void createAccountsAndContacts(integer n){
        //1. 5 tane account create edin.. isimler ayni olmasin..debug mesajinda 5 tane account basarili bir sekilde create edildi..
        if(n>0){
            List<Account> accList = new List<Account>();
            for(integer i = 1 ; i <=n ; i++){
                account acc = new account();
                acc.Name = 'Burak ' + i;
                accList.add(acc);
            }
            if(!accList.isEmpty()){
                insert accList;
                System.debug(n + '  tane account basarili bir sekilde create edildi..');
            }

            List<Contact> conList = new List<Contact>();
            for(account acc : accList){
                for(integer i = 1 ; i<=n ; i++){
                    contact con = new contact();
                    con.FirstName = acc.name;
                    con.lastName = 'Berk ' + i;
                    con.AccountId = acc.id;
                    conList.add(con);
                } 
            }
            if(!conList.isEmpty()){
                insert conList;
                integer a = n*n;
                System.debug(a + ' tane contact basarili bir sekilde create edildi..');
        }
        } else {
            System.debug('Yanlis bir sayi girdiniz.. Bir daha deneyin..');
        }
        
    }
}
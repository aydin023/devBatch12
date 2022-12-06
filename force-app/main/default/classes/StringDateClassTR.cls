public class StringDateClassTR {
    public void stringMethods(){
        string firstName = 'John';
        System.debug(firstName);
        string lastName = 'Doe';
        System.debug(lastName);
        //string fullName = 'John Doe';
        string fullName = firstName + ' ' + lastName;
        System.debug(fullName);

        integer a = 11;
        integer b = 22;
        decimal c = (a + b)/2;
        Double d = (a + b)/2;
        //integer e = (a + b)/2;

        System.debug('a = ' + a);
        System.debug('b = ' + b);
        System.debug('c = ' + c);
        System.debug('d = ' + d);


        // String Class Metotları
        // capitalize() textin ilk harfini büyük yapıyor..
        string cumle1 = 'salesforce ogreniyorum';
        cumle1.capitalize();
        //görmek için 2 yol var.
        //1 system debug içine yazarım.

        //System.debug(cumle1.capitalize());

        //2 string başka bir variable a assign ederim..
        string cumle2 = cumle1.capitalize();
        //System.debug('cumle 1 => ' + cumle1);
        //System.debug('cumle 2 => ' + cumle2);

        boolean kontrol1 = cumle1.contains('SalesForce');
        System.debug('contain metodu ; SalesForce kelimesi ' + cumle1 + ' icinde var mı? = '+ kontrol1);

        boolean kontrol2 = cumle1.containsIgnoreCase('SalesForce');
        System.debug('containsIgnoreCase metodu ; SalesForce kelimesi ' + cumle1 + ' icinde var mı? = '+ kontrol2);

        System.debug(cumle1 + ' cumlesınde ' + cumle1.length() + ' karakter var.');
    }

    public void dateClass(){
        date myDate = Date.newInstance(1960, 2, 17);
        System.debug(myDate);

        date bugun = date.today();
        System.debug(bugun);

        // yası hesaplayalım.. 2000 11 11 

        date dogumTarihi = date.newInstance(2000, 11, 11);
        integer gunSayisi = dogumTarihi.daysBetween(bugun);
        decimal yas = gunSayisi/365;
        System.debug(dogumTarihi + ' tarihinde dogan kişi daysBetween metotu ile = ' + yas + ' yasındadır');

        Integer aySayisi = dogumTarihi.monthsBetween(bugun);
        decimal yas2 = aySayisi/12;
        System.debug(dogumTarihi + ' tarihinde dogan kişi monthsBetween metotu ile = ' + yas + ' yasındadır');

        // bugünün tarihini saatle beraber getirmek istersem..

        Datetime zaman = Datetime.now();
        System.debug(zaman);
    }
}


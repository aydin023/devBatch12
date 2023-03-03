public class ParametreliMetodlar12 {

    public static void welcomeMessage(string nm) {
        System.debug('hos geldin '+ nm);
        
    }
    //metodumuz string bir parametre alsin.Bu metod gelen parametrenin karakter uzunlugunun return etsin.
    public static integer karakterUzunlugu (string text){
        integer krktrUzn = text.length();
        return krktrUzn;

    }

    //Metodumuz paramtre olark integer bir deger alsin. Bu integer sayi kac rakamda olsdugunu return etsin.

    public static integer rakamSayisi(integer sayi){
        string strSy = string.valueOf(sayi);
        //return strSy.length();

        integer rkmSy = strSy.length();
        return rkmSy;
    }   

    //parametre olarak 2 integer deger alsin ve bunlarin toplami return etsin
    public static integer toplama( integer a, integer b){
        return a+b;

    }

    //parametre olarak 2 integer alsin ve bunlarin farkini return etsin
    public static integer cikma(integer c, integer d){
    return c - d;
    }

    public static void ucret ( string kitabAdi, decimal fiyat, integer adet){
        decimal toplamUcret = fiyat*adet;
        system.debug(kitabAdi + ' kitabindan '+ adet + ' adet aldiniz, odemeniz gereken ucret = '+ toplamUcret + '$');

    }
}

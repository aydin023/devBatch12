public class ParametreliMetodlar12 {
    //metodumuz string bir parametre alsin.Bu metod gelen parametrenin karakter uzunlugunun return etsin.
    public integer karakterUzunlugu (string text){
        integer krktrUzn = text.length();
        return krktrUzn;

    }

    //Metodumuz paramtre olark integer bir deger alsin. Bu integer sayi kac rakamda olsdugunu return etsin.

    public integer rakamSayisi(integer sayi){
        string strSy = string.valueOf(sayi);
        //return strSy.length();

        integer rkmSy = strSy.length();
        return rkmSy;
    }   

    //parametre olarak 2 integer deger alsin ve bunlarin toplami return etsin
    public integer toplama( integer a, integer b){
        return a+b;

    }

    //parametre olarak 2 integer alsin ve bunlarin farkini return etsin
    public integer cikma(integer c, integer d){
    return c - d;
    }

    public void ucret ( string kitabAdi, decimal fiyat, integer adet){
        decimal toplamUcret = fiyat*adet;
        system.debug(kitabAdi + ' kitabindan '+ adet + ' adet aldiniz, odemeniz gereken ucret = '+ toplamUcret + '$');

    }
}

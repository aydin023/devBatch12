@istest
public class ParametreliMetodlar12Test {
    @istest
    private static void welcomeMessageTest() {
        //void olan bir metot test edildiginde orgu etkileyecek bir islem yapmiyor.. Buradaki bir mesaj gibi basit bir debug mesaji varsa metodu cagirmamiz test etmek icin yeterlidir. Parametere varsa type olarak uygun bir parametre ile cagirarak test ederiz..
        ParametreliMetodlar12.welcomeMessage('Fatma');
    }

    @istest
    private static void karakterUzunluguTest() {
        //test edecegimiz metodu uygun bir parametre ile cagiriyoruz. return degerin dogru olup olmadigini kontrol ediyoruz. system.assertEquals( , , );
        integer a = ParametreliMetodlar12.karakterUzunlugu('Merhaba');
        system.assertEquals(7, a, 'kelimenin karakter uzunlugu beklenen gelen degerler');
    }

    @istest
    private static void rakamSayisiTest() {
        integer rs = ParametreliMetodlar12.rakamSayisi(112233);
        System.assertEquals(6, rs);
    }

    @istest
    private static void toplamaTest() {
        integer tp = ParametreliMetodlar12.toplama(11, 22);
        system.assertEquals(33, tp);
    }

    @istest
    private static void cikarmaTest() {
        integer sn = ParametreliMetodlar12.cikma(20, 10);
        System.assertEquals(10, sn);
    }

    @istest
    private static void ucretTest() {
        ParametreliMetodlar12.ucret('Sefiller', 12.50, 11);
    }
}
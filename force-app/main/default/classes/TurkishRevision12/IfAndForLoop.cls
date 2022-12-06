public class IfAndForLoop {
    //1. a ve b iki sayı olsun. a ve b'yi karşılaştırıp büyük, küçük ve eşitlik durumunu bir mesajla yazdıracak bir if else bloğu yazın.
    public void ifNumbers(integer a, integer b){
       /*if (a>b) 
        System.debug(a + ' sayisi ' + b + ' sayisindan buyuktur');
        if (a<b) 
        System.debug(b + ' sayisi ' + a + ' sayisindan buyuktur');
        if (a == b) 
        System.debug(a + ' sayisi ' + b + ' sayisina esittir');*/

        if (a>b)
        System.debug(a + ' sayisi ' + b + ' sayisindan buyuktur');
        else if (a<b)
        System.debug(b + ' sayisi ' + a + ' sayisindan buyuktur');
        else 
        System.debug(a + ' sayisi ' + b + ' sayisina esittir');
    }
    /*2. Ekmek, simit ve kek siparişlerinden birini istediğiniz adet ile beraber alan 2 parametreli bir metot yazın. size toplam ödeyeceğiniz miktarı mesajla beraber yazsın. 
        Metot: ifBread
        Ekmek : 1$ 
        Simit : 2$
        Kek : 3$ */
    public void ifBread(string order, integer nmbr){
        integer hesap = 0;

        if (order == 'ekmek') {
            hesap = nmbr*1;
        } else if (order == 'simit'){
            hesap = nmbr*2;
        } else if (order == 'kek') {
            hesap = nmbr*3;
        } else {
            System.debug('uzgunuz girdiginiz siparis bizde mevcut degil');
        }

        if (hesap != 0) {
            System.debug(nmbr + ' adet ' + order + ' icin odeyeceginiz miktar = ' + hesap + '$');
        } 
    }
    // 3. 2. soruyu switch when ile yapin.
    public void ifBreadSwitch(string order, integer nmbr){
        integer hesap = 0;
        switch on order {
            when  'ekmek' {
                hesap = nmbr*1;
            }
            when 'simit' {
                hesap = nmbr*2;
            } when 'kek' {
                hesap = nmbr*3;
            }
            when else {
                System.debug('uzgunuz girdiginiz siparis bizde mevcut degil');
            }
        }

        if (hesap != 0) {
            System.debug(nmbr + ' adet ' + order + ' icin odeyeceginiz miktar = ' + hesap + '$');
        } 
    }

    //3. Parametre olarak integer 'n' sayısını alan, 1'den n'e kadar olan sayıların toplamını return eden metot yazin.
    public integer forLoopSumNumbers(integer n) {
        integer sum = 0;
        for (Integer i = 1; i <= n; i++) {
            // sum = sum + i;
            sum += i;
            System.debug(sum);
        }
        return sum;
    }
    //4. 3. soruyu while ile yapalim..
    public integer whileLoopSumNumbers(integer n) {
        integer sum = 0;
        integer count = 1;
        while (count <= n) {
            sum += count;
            System.debug('sum = ' + sum);
            count++;
            System.debug('count = ' + count);
        }
        return sum;
    }


}
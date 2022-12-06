public class ListCollection {
    //bu metot parametre olarak bir isim listesi alsin. Bu isimleri tek tek yazdirsin..
    public static void printNames(List<String> adList) {
        //listemizi iki sekilde dolu mu bos mu oldugunu kontrol edebiliriz. doluysa islem yapariz. bossa islem yapmayiz.
        //1
        /*if (adList.size()>0) {
            integer counter = 1;
            for (string eachName : adList) {
                System.debug('for dongusu ' + counter + '. defa dondu');
                System.debug(eachName);
                counter++;
            }
        }*/
        //2
        if (!adList.isEmpty()) {
            integer counter = 1;
            for (string eachName : adList) {
                System.debug('for dongusu ' + counter + '. defa dondu');
                System.debug(eachName);
                counter++;
            }
        }
    }

    //decimal bir listeyi parametre olarak alan ve bu listenin elemanlarinin toplamini donduren(return eden) bir metot yazin.
    public static decimal listEachItemSum(List<Decimal> decList) {
        Decimal sum;
        if (!decList.isEmpty()) {
            sum=0;
            for (decimal eachItem : decList) {
                //sum = sum + eachItem;
                sum += eachItem;
            }
        }


        return sum;
    }

    //parametre olarak decimal bir liste alan ve bu listenin elemanlarinin aritmetik ortalamasini donen(return eden) bir metot yazin.
    public static decimal averageList(List<Decimal> declist) {
        decimal average;
        if (!decList.isEmpty()) {
            decimal toplam = listEachItemSum(declist);
            integer elemanSayisi = declist.size();
            average = toplam/elemanSayisi;

        }
        return average;
    }

    //Bu metot string bir liste alsin ve listenin son elemanini dondursun(return) etsin. listeniz en az 5 elemandan olussun..
    public static string lastItem(List<string> strList) {
        string sonEleman;
        if (!strList.isEmpty()) {
            integer lastIndex = strList.size()-1;
            sonEleman = strList.get(lastIndex);
        }

        return sonEleman;
    }


}

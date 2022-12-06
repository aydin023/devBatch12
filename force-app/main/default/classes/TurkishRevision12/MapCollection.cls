public class MapCollection {
    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.

    //1. son bir haftanin sicaklarini liste olarak alan bir metot yazin. Bu metot her sehri sicaklik dereceleri ile beraber yazdirsin.
    public static void printDegree(Map<string, List<Decimal>> degreesMap) {
        System.debug(degreesMap);
        System.debug('Amsterdam in sicaklik degerleri = ' + degreesMap.get('amsterdam'));
        for (string city : degreesMap.keySet()) {
            System.debug(city + ' sehrinin sicaklik degerleri = ' + degreesMap.get(city));
        }
    }

    //2. Son 1 haftanin sicaklik ortalamalarini bulup sehir ismini key sicaklik ortalamasini value olarak alan bir map olusturun?
    public static void averageDegree(Map<string, List<Decimal>> degreesMap2) {
        Map<string, Decimal> averageMap = new Map<string, Decimal>();

        for (string city : degreesMap2.keySet()) {
            decimal sum = 0;
            for (decimal eachDegree : degreesMap2.get(city)) {
                sum += eachDegree;
            }
            decimal average = sum/degreesMap2.get(city).size();
            averageMap.put(city, average);
        }
        System.debug('sehirlerin haftalik sicaklik ortalamalari = '+  averageMap);

        //sicaklik ortalamalari 10 derecenin ustunde olan sehirleri ayri listelesin 10 derece ve altinda olan sehirleri ayri listelesin ve bu listeleri yazdirin?

        Set<String> less10 = new Set<String>();
        Set<String> more10 = new Set<String>();

        for (string city : averageMap.keySet()) {
            if (averageMap.get(city)>10) {
                more10.add(city);
            } else {
                less10.add(city);
            }
        }

        System.debug('sicaklik ortalamasi 10 dereceden buyuk olan sehirler = ' + more10);
        System.debug('sicaklik ortalamasi 10 derece ve daha kucuk olan sehirler = ' + less10);

    }
}
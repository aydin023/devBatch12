List<String> isimList = new List<String>();
isimList.add('Hijran');
isimList.add('Gulsah');
isimList.add('Mehmet');
isimList.add('Eda');
isimList.add('uzayli');

System.debug('isim listemiz = ' + isimList);
System.debug('index numarasi 2 olan isim get metodu ile : ' + isimList.get(2));
System.debug('index numarasi 2 olan isim koseli parantez ile : ' + isimList[2]);

integer elemanSayisi = isimList.size();
System.debug('listemin eleman sayisi = ' + elemanSayisi);

List<String> isimList2 = new List<String>{'Eric', 'Ozlem', 'Kenul'};
isimList.addAll(isimList2);
System.debug('Add all dan sonra listem = ' + isimList);
isimList.sort();
System.debug('sort dan sonra listem = ' + isimList);

ListCollection12.printNames(isimList);

List<Decimal> dList = new List<Decimal>{11.5, 23.4, 22.2, 3.5, 4,8};
decimal toplam = ListCollection12.listEachItemSum(dList);
System.debug(dList + ' listesinin elemanlarinin toplami = ' + toplam);

System.debug(dList + ' listesinin elemanlarinin aritmetik ortalamasi = ' + ListCollection12.averageList(dList));

//decimal avrg = ListCollection12.averageList(dList);
//System.debug(dList + ' listesinin elemanlarinin aritmetik ortalamasi = ' + avrg);

List<string> sList = new List<String>{'Erik', 'Elma', 'Armut', 'Nar', 'Avakado', 'Ayva'};
System.debug('listemiz = ' + sList);
System.debug('listemizin son elemani = ' + ListCollection12.lastItem(sList));
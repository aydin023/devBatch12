
List<string> sehirler = new List<string>{'Istanbul', 'New York', 'Toronto', 'Istanbul', 'Amsterdam', 'New York'};
System.debug('List ==> '+ sehirler);

Set<string> ulkeler = new Set<string>{'Turkey', 'USA', 'Canada', 'Turkey', 'Hollanda', 'USA'};
System.debug('Ulkeler ==> '+ ulkeler);

set<string> sehirlerSet = new set<string>();
sehirlerSet.addAll(sehirler);
System.debug('sehirler set ile ==> '+ sehirlerSet);


Map<integer, string> plakalar = new Map<integer, string>();
plakalar.put(34, 'Istanbul');
plakalar.put(41, 'Izmit');
plakalar.put(41, 'Koceli');
plakalar.put(6, 'Ankara');
plakalar.put(10, 'Baku');
plakalar.put(61, 'Trabzon');
System.debug(plakalar);

//sehirler ve 3 tane yoresel yemek

map<string,List<String>> yoresel = new map<string, List<String>>();
List<string> y1 = new List<string>{'Baklava', 'Fistik', 'Dolma'};
yoresel.put('Gaziantep', y1);
List<String> y2 = new List<String>{'Plov', 'Demleme', 'Qara'};
yoresel.put('Baku', y2);
List<string> y3 = new List<string>{'tantuni', 'cezerye', 'kerebic'};
yoresel.put('Mersin', y3);
System.debug('yoresel yemekler '+ yoresel);
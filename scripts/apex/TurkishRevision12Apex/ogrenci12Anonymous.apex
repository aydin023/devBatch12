Ogrenci12 s1 = new Ogrenci12();
s1.firstName = ' Jhon';
s1.lastName = 'Doe';
s1.className = '7e';
s1.art = false;
s1.sport = true;
s1.ingGrade = 85;
s1.mathGrade = 95;
s1.fenGrade = 90;
system.debug(s1);
s1.message();

Ogrenci12 s2 = new Ogrenci12();
s2.firstName = ' Sazan';
s2.lastName = 'Balik';
s2.className = '9e';
s2.art = true;
s2.sport = false;
s2.ingGrade = 85;
s2.mathGrade = 95;
s2.fenGrade = 90;
system.debug(s2);
s2.message();

List<Ogrenci12> ogrenciler = new List<Ogrenci12>();
ogrenciler.add(s1);
ogrenciler.add(s2);
System.debug('=====liste=====');
System.debug(ogrenciler);

System.debug('=====parametreli Constructor===');
Ogrenci12 s3 = new Ogrenci12('Marry', 'Rire', '11a', true);
s3.fenGrade = 69;
s3.message();

Ogrenci12 ss1 = new Ogrenci12('Esma', 'Toprak','10b',false);
Ogrenci12 ss1 = new Ogrenci12('Tolga', 'Mermer','9c',true);
Ogrenci12 ss1 = new Ogrenci12('Suna', 'Ozen','11f',true);
Ogrenci12 ss1 = new Ogrenci12('Ali', 'Eren','10c',false);

System.debug(Ogrenci12.students)
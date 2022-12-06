ParametreliMetodlar12 pm1 = new ParametreliMetodlar12();
string cumle = 'Salesforce Developer olmak yolunda emin addimlarla yuruyoruz.' ;
integer sonuc1 = pm1.karakterUzunlugu(cumle);
system.debug(cumle + ' cumlesinin karakter sayisi esitdir '+ sonuc1);


ParametreliMetodlar12 pm2 = new ParametreliMetodlar12();
integer rakamSys = pm2.rakamSayisi(4444);
system.debug('toplam rakam sayisi = ' + rakamSys);
system.debug(pm2.rakamSayisi(2222));

ParametreliMetodlar12 pm3 = new ParametreliMetodlar12();
integer tplm = pm3.toplama(11, 12);
system.debug('sayilarin toplami = '+ tplm);
integer ckrm = pm3.cikma(55, 44);
system.debug('sayilarin farki = '+ ckrm);

//sayilarin toplamini sayilarin farkina bolumune bolun 

decimal blm = tplm/ckrm;
system.debug('2 sayinin toplaminin farkli 2 sayinin farkina bolumu = '+ blm);

ParametreliMetodlar12 pm4 = new ParametreliMetodlar12();
pm4.ucret('Harry potter ', 25, 5);

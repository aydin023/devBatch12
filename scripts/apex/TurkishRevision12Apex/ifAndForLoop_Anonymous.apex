IfAndForLoop ifl = new IfAndForLoop();

/*ifl.ifNumbers(5, 11);
ifl.ifNumbers(23, 14);
ifl.ifNumbers(15, 15);*/

ifl.ifBread('simit', 7);
ifl.ifBread('kek', 4);
ifl.ifBread('cay', 2);

ifl.ifBreadSwitch('simit', 7);
ifl.ifBreadSwitch('kek', 4);
ifl.ifBreadSwitch('cay', 2);

for (Integer i = 1; i <= 10; i++) {
    System.debug(i);
}

IfAndForLoop ifl2 = new IfAndForLoop();
System.debug('toplam = ' + ifl2.forLoopSumNumbers(50));

IfAndForLoop ifl3 = new IfAndForLoop();
System.debug('toplam = ' + ifl3.whileLoopSumNumbers(10));
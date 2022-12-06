SetDemo.citySet();
SetDemo.randomInteger();

List<integer> listInteger = new List<integer>();
listInteger.add(10); //0  //index will always be integer!
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(15);//4
Set<Integer> setInteger = SetDemo.setFromList(listInteger);
System.debug('set -> '+ setInteger);

Set<string> cities = new Set<string>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Nairobi');
cities.add('Berlin');
cities.add('Nairobi');
cities.add('Nairobi');
cities.add('Tokyo');
Set<String>uppercaseCities=SetDemo.uppercaseSet(cities);
System.debug(uppercaseCities);
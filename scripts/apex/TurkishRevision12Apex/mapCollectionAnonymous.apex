Map<string, List<Decimal>> sehirlerinHavaDrm = new Map<string, List<Decimal>>();

List<Decimal> istanbulOfHot = new List<Decimal>{11.5, 15.4, 21.2, 9.5, 17.3, 12.3, 22.2};
sehirlerinHavaDrm.put('istanbul', istanbulOfHot);

List<Decimal> newyorkOfHot = new List<Decimal>{8.5, 5.4, 1.2, 9.5, 7.3, 2.3, 2.2};
sehirlerinHavaDrm.put('newYork', newyorkOfHot);

List<Decimal> torontoOfHot = new List<Decimal>{-1.5, -5.4, -1.2, 0.5, -7.3, -2.3, 2.2};
sehirlerinHavaDrm.put('toronto', torontoOfHot);

List<Decimal> nairobiOfHot = new List<Decimal>{21.5, 25.4, 24.2, 29.5, 27.3, 22.3, 22.2};
sehirlerinHavaDrm.put('nairobi', nairobiOfHot);

List<Decimal> amsterdamOfHot = new List<Decimal>{6.5, 5.4, 1.2, 9.5, 7.3, 2.3, 2.2};
sehirlerinHavaDrm.put('amsterdam', amsterdamOfHot);

MapCollection.printDegree(sehirlerinHavaDrm);
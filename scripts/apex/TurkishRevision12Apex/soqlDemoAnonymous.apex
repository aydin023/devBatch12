integer rcrdSys = SoqlDemo12.accountIndustryOfEducation('Education');
System.debug('accountlarin record sayisi(education) = ' + rcrdSys);

integer rcrdSys2 = SoqlDemo12.accountIndustryOfEducation('Biotechnology');
System.debug('accountlarin record sayisi(Biotechnology) = ' + rcrdSys2);

integer rcrdSys3 = SoqlDemo12.accountIndustryOfEducation('Energy');
System.debug('accountlarin record sayisi(Energy) = ' + rcrdSys3);

SoqlDemo12.AccontWithContacts('Energy');
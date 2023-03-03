account acc = [select id, name, annualRevenue from account where id ='001Do000003DzZCIA0' ];
acc.AnnualRevenue= 12;
update acc;

Map<String, Object> mapFlow = new Map<String, Object>();
mapFlow.put('AnnualRevenue', acc.AnnualRevenue);
mapFlow.put('AccountId', acc.id);



flow.Interview updtFlow = new Flow.Interview.Update_Child_Opportunities_Amount_practice_lssn(mapFlow);
updtFlow.start();
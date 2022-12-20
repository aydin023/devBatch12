List<case> listC = new List<case>();

for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Origin = 'Web';
    c.Status = 'New';
    listC.add(c);

}
insert listC;

List<case> getAllCases = [select id, status from case where status = 'New'];
for (case eachCase : getAllCases) {
    eachCase.Status = 'Working';
}
update getAllCases;


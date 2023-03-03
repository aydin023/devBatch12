string cronex = '0 0 13 * * ?';
AccountSchedulable asch = new AccountSchedulable();

System.schedule('accSchedule again', cronex, asch);
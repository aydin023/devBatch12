public  class Datetime_Assignment {
    public void diffOfDate(){
        date varTomorrowDate = date.newInstance(2022, 11, 15);
        date varTodayDate = date.newInstance(2022, 11, 14);
        integer days = varTomorrowDate.daysBetween(varTodayDate);
        
        System.debug('diffrences of day(s): ' +days);

    }

    public void Timecheck(){
        dateTime varTomorrowDateTime = dateTime.newInstance(2022, 11, 15, 23, 0, 0);

        dateTime var10DaysDatetime = varTomorrowDateTime.addDays(10).addHours(2);
        long varDatetimeLong = 12339874361L ;
        dateTime var7DaysDatetime = varTomorrowDateTime.addDays(7);
        dateTime total20days = var10DaysDatetime.addDays(10);

        System.debug('tomorrow 7am '+varTomorrowDateTime);
        System.debug('after 10 days and 9am '+var10DaysDatetime);
        System.debug('long date type '+varDatetimeLong);
        System.debug('tommorow + 7days '+var7DaysDatetime);
        System.debug('10 days + 10days '+total20days);
    }
    
}

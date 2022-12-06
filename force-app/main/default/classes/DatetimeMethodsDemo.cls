public class DatetimeMethodsDemo {
    public void calculateAgeInMonth(){
        date birthDate = date.newInstance(1993, 10, 30);
        date todaydate = date.today();
        integer ageInMonths =  birthDate.monthsBetween(todayDate);

        System.debug('Me age '+ ageInMonths);

    }

    public void calculateAgeInDays(){
        date birthDate = date.newInstance(1993, 10, 30);
        date todaydate = date.today();

        integer ageInDays = birthDate.daysBetween(todayDate);
        System.debug('Me age days '+ ageIndays);


    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(999);
        //date
        //integer endDateMonths = subscriptionEndDate.month();  (also day; year;)
        //date pastSubscriptionDate = subscriptionStartDate.addDays(-999);
        
        System.debug('subscription end date is '+subscriptionEndDate);
    }

    public void printOfferEndDateTime(){
        dateTime dtNow = datetime.now();

        datetime dtOfferEnd = dtNow.addHours(51);
        System.debug('Offer end sun '+dtOfferEnd);
    }

    public void birthDateInMilliSeconds(){
        datetime birthTime = dateTime.newInstance(1993, 10, 30, 7, 30, 0);

        // get my birthdate in milliseconds
        long longBirthDate = birthTime.getTime();
        System.debug('my birthdate in long (milliseconds) is '+ longBirthDate);
    }
}

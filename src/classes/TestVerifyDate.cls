/**
 * Created by Basko_Y on 13.06.2018.
 */

@IsTest
private class TestVerifyDate {
    @isTest static void testLastDay() {
        Date testDate= VerifyDate.CheckDates(Date.today().addDays(2),Date.today().addDays(1));
        Date myDate = Date.newInstance(2018, 6, 30);
        System.assertEquals(myDate, testDate);
    }
    @isTest static void testDate2(){
        Date testDate= VerifyDate.CheckDates(Date.today().addDays(2),Date.today().addDays(10));
        System.assertEquals(Date.today().addDays(10),testDate);
    }
    @isTest static void moreThan30(){
        Date testDate= VerifyDate.CheckDates(Date.today().addDays(2),Date.today().addDays(40));
        Date myDate = Date.newInstance(2018, 6, 30);
        System.assertEquals(myDate, testDate);
    }
    }
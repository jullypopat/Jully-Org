@isTest
public class TestVerifyDate {
    static testMethod void testCheckDates()
    {
        Date d = VerifyDate.CheckDates(System.today(),System.today()+1);
        Date d1 = VerifyDate.CheckDates(System.today(),System.today()+60);
    }

}
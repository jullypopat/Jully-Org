@isTest
public class DContactTest {
    static testMethod void TestDeleteContact() 
    {
        Account a=new Account();
        a.Name='aqZ';
        insert  a;
       Contact c=new Contact();
		c.LastName ='axac';
        c.AccountId=a.Id;
        insert c;
        c.AccountId=a.Id;
        delete c;
        
        Test.startTest();
			Contact c1;
    	Test.stopTest();
        
    }

}
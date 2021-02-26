@isTest
public class Opportunity1Test {
 static testMethod void Testopportunity1() {
        Opportunity o1=new Opportunity();
        o1.Name='bhjb';
     	o1.StageName='Prospecting';
     	o1.CloseDate=Date.today()+15;
     	insert o1;
        
        Test.startTest();
			Opportunity1Test o1t;
         Test.stopTest();
         System.assertEquals('Prospecting', o1.StageName);
     	 System.assertEquals(Date.TODAY()+15, o1.CloseDate);
       
         
     }
}
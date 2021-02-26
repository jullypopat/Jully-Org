@isTest
public class Opportunity2Test {
static testMethod void Testopportunity2() {
        Opportunity o2=new Opportunity();
        o2.Name='jhbni';
    o2.Type='New Customer';
     	insert o2;
        
        Test.startTest();
			Opportunity1Test o2t;
         Test.stopTest();
         System.assertEquals('New Customer', o2.Type);
     	
       
         
     }
}
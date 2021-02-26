@isTest
public class Lead1 {
     static testMethod void Testt1() {
         String leadId = ApexPages.currentPage().getParameters().get('id');
         Lead l1=new Lead();
        l1.FirstName='nxajkb';
         l1.LastName='xscw';
         l1.Company='nnnhjh ';
         l1.Rating='Hot';
         insert l1;
        Test.startTest();
			Lead1 l2;
         Test.stopTest();
         System.assertEquals('Hot', l1.Rating);
       
         
     }
}
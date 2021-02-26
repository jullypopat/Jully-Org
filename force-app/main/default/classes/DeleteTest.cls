@isTest
public class DeleteTest {
static testMethod void TestDeleteO() {
   Opportunity o=new Opportunity();
   o.Name='cfrt';
    insert o;
    
    o.Name='aaa';
    update o;
    Task t=new Task();
   t.Subject='saccas';
   t.Status='Not Started';
   t.WhatId=o.Id;
   t.Priority='Normal';
    insert t;
    Test.startTest();
    	Opportunity o1;
    Test.stopTest();
    
    
}    
}
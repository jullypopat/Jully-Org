trigger CDelete on Contact (before delete) {
   
    if(Trigger.isDelete) {
        for(Contact c: Trigger.old) {
        Account acc = [select id from Account];
        Contact con = [Select Id,Name,Contact.Account.Name From Contact where id =: acc.id];
            Test.startTest();
                Contact xd;
            Test.stopTest();
}
}
}
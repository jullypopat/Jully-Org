trigger DeleteContact on Contact (after delete){
    list<id> accounts = new  list<id>();
    for (contact c : trigger.old) {
        if(c.AccountId!=null){
            accounts.add(c.AccountId);
         }
    }
    if(accounts.size()>0){
        list<account> accs = [select  id from account where id in :accounts];
        delete accs;
    }
}
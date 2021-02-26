public with sharing class AccContact {
    public list<contact> conlst { get; set; }
    public list<account> accconts1 { get; set; }

    public PageReference selacc() {
    string getid=apexpages.currentpage().getparameters().get('conlst');
         accconts1=[select id,name,(select id,lastname,Email,MobilePhone from contacts) from account where id=:getid ];
      return null;
    }


    public List<Account> acclst { get; set; }
    public  AccContact (){
        acclst=[select id,name,Email__c,Address__c from account ];
   
   }
   public PageReference savingCustomerRecord(){
   
        upsert accconts1;
        PageReference nextpage= new PageReference('/'+accconts1);
        return nextpage;
    }
}
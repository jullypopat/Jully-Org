trigger NewApproval on Account (after insert) {
     Approval.ProcessSubmitRequest req1 =new Approval.ProcessSubmitRequest();
    for(Account a:Trigger.new){
           if(a.Name!=NULL)
           {
               req1.setComments('Submitting request for approval ');
               req1.setObjectId(a.id);
               
               Approval.ProcessResult result = Approval.process(req1);
               
           }
    }
    
}
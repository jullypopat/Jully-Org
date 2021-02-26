trigger SendEmailtoContact on Account (after insert, after update) {
    List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
    for(Account a: Trigger.new)
    {
        
      if(a.Name!=NULL)
      {   
           
              Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
              List<String> sendTo = new List<String>();
              sendTo.add(a.Email__c);
              mail.setToAddresses(sendTo);
              mail.setReplyTo('jullypopat@gmail.com');
              mail.setSenderDisplayName('Hello');
              mail.setSubject('hello');
              String body = 'Dear absc';
              mail.setHtmlBody(body);
              mails.add(mail);
             Messaging.sendEmail(mails);
            
        
    
    } 
    }
}
@isTest
public class approtest {
static testMethod void TestNewApproval() 
        {
            Account a=new Account();
            a.Name='bbh';
            insert  a;
            
            Approval.ProcessSubmitRequest app = new Approval.ProcessSubmitRequest();
            app.setObjectId(a.id);
            Approval.ProcessResult result = Approval.process(app);
           
            
        }
}
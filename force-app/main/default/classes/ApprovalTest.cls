@isTest
public class ApprovalTest {
static testMethod void TestNewApproval() 
        {
                Account a=new Account();
                a.Name='bbh';
                insert  a;
                
                 Approval.ProcessWorkitemRequest req = new Approval.ProcessWorkitemRequest();
                 req.setComments('Approving request for Account');
                 req.setAction('Approve');
                 ProcessInstanceWorkitem pItem = [Select Id from ProcessInstanceWorkitem 
                 where ProcessInstance.TargetObjectId =: a.id];
                
                 req.setWorkitemId(pItem.Id);
            
                 Approval.ProcessResult result = Approval.process(req);
                 
        }
        }
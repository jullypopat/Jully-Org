trigger opportunity2 on Opportunity (before insert) {
for(Opportunity record: Trigger.new) {
         record.Type='New Customer';   
         

}
}